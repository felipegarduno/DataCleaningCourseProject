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

Position|Variable Name|Description
————————|:-——————————:|:——————————: 
1 |subject| 
2 |activityname|
3 |activity|
4 |tbodyaccmeanx|
5 |tbodyaccmeany|
6 |tbodyaccmeanz|
7 |tgravityaccmeanx|
8 |tgravityaccmeany|
9 |tgravityaccmeanz|
10 |tbodyaccjerkmeanx|
11 |tbodyaccjerkmeany|
12 |tbodyaccjerkmeanz|
13 |tbodygyromeanx|
14 |tbodygyromeany|
15 |tbodygyromeanz|
16 |tbodygyrojerkmeanx|
17 |tbodygyrojerkmeany|
18 |tbodygyrojerkmeanz|
19 |tbodyaccmagmean|
20 |tgravityaccmagmean|
21 |tbodyaccjerkmagmean|
22 |tbodygyromagmean|
23 |tbodygyrojerkmagmean|
24 |fbodyaccmeanx|
25 |fbodyaccmeany|
26 |fbodyaccmeanz|
27 |fbodyaccmeanfreqx|
28 |fbodyaccmeanfreqy|
29 |fbodyaccmeanfreqz|
30 |fbodyaccjerkmeanx|
31 |fbodyaccjerkmeany|
32 |fbodyaccjerkmeanz|
33 |fbodyaccjerkmeanfreqx|
34 |fbodyaccjerkmeanfreqy|
35 |fbodyaccjerkmeanfreqz|
36 |fbodygyromeanx|
37 |fbodygyromeany|
38 |fbodygyromeanz|
39 |fbodygyromeanfreqx|
40 |fbodygyromeanfreqy|
41 |fbodygyromeanfreqz|
42 |fbodyaccmagmean|
43 |fbodyaccmagmeanfreq|
44 |fbodybodyaccjerkmagmean|
45 |fbodybodyaccjerkmagmeanfreq|
46 |fbodybodygyromagmean|
47 |fbodybodygyromagmeanfreq|
48 |fbodybodygyrojerkmagmean|
49 |fbodybodygyrojerkmagmeanfreq|
50 |tbodyaccstdx|
51 |tbodyaccstdy|
52 |tbodyaccstdz|
53 |tgravityaccstdx|
54 |tgravityaccstdy|
55 |tgravityaccstdz|
56 |tbodyaccjerkstdx|
57 |tbodyaccjerkstdy|
58 |tbodyaccjerkstdz|
59 |tbodygyrostdx|
60 |tbodygyrostdy|
61 |tbodygyrostdz|
62 |tbodygyrojerkstdx|
63 |tbodygyrojerkstdy|
64 |tbodygyrojerkstdz|
65 |tbodyaccmagstd|
66 |tgravityaccmagstd|
67 |tbodyaccjerkmagstd|
68 |tbodygyromagstd|
69 |tbodygyrojerkmagstd|
70 |fbodyaccstdx|
71 |fbodyaccstdy|
72 |fbodyaccstdz|
73 |fbodyaccjerkstdx|
74 |fbodyaccjerkstdy|
75 |fbodyaccjerkstdz|
76 |fbodygyrostdx|
77 |fbodygyrostdy|
78 |fbodygyrostdz|
79 |fbodyaccmagstd|
80 |fbodybodyaccjerkmagstd|
81 |fbodybodygyromagstd|
82 |fbodybodygyrojerkmagstd|

