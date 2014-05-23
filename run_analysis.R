testdata<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/test/X_test.txt")
subjecttest<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/test/subject_test.txt")
labeltest<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/test/y_test.txt")
varnames<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/features.txt")
names(testdata)<-varnames[,2]
names(labeltest)<-"Activity"
names(subjecttest)<-"Subject"
testdata<-cbind(subjecttest,labeltest,testdata)
traindata<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/train/X_train.txt")
subjecttrain<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/train/subject_train.txt")
labeltrain<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/train/y_train.txt")
names(traindata)<-varnames[,2]
names(subjecttrain)<-"Subject"
names(labeltrain)<-"Activity"
traindata<-cbind(subjecttrain,labeltrain,traindata)
joindata<-rbind(traindata,testdata)
meannames<-grep("mean",names(joindata))
stdnames<-grep("std",names(joindata))
filterdata<-joindata[,c(1,2,meannames,stdnames)]
nameactivity<-read.table("/Users/Felipe/Coursera/Datacleaning/UCI HAR Dataset/activity_labels.txt")
filterdata$nameactivity<-filterdata$Activity
nameindex<-match(filterdata$nameactivity,nameactivity[,1])
filterdata$nameactivity<-nameactivity[nameindex,2]
names(filterdata)<-gsub("\\()","",names(filterdata))
names(filterdata)<-gsub("-","",names(filterdata))
names(filterdata)<-tolower(names(filterdata))
meandataset<-aggregate(filterdata[,3:ncol(filterdata)-1],by=list(filterdata$subject,filterdata$nameactivity),mean)
names(meandataset)[1:2]<-c("subject","activityname")
write.table(meandataset,file="tidy_data.txt")



