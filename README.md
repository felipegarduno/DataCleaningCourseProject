DataCleaningCourseProject
=========================
This repo contains the files "tidy_data.txt", "Codebook.md","run_analysis.R" and "README.md".

The "run_analysis.R" download a data set frome the url https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip and manipulates the data set to create the file "tidy_data.txt" that has only the means for each subject for each activity of all the variables that are on the mean and standard deviation of each measurement. The file will be downloaded and unzipped in the R working directory, and the "tidy_data.txt" will be created there too. 

The "Codebook.md" describes all the manipulation and the intermediate steps to create the "tidy_data.txt" data set that the "run_analysis.R" perform. Also contains a table of the variables that are in the "tidy_data.txt" data set, with a description and their column position in the data set. 



