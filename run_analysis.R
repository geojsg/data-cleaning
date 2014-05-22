print("Started...")

library(reshape2)
print("library reshaped2 loaded")

# Loading raw data
activity.labels<-read.table("activity_labels.txt")

featfile<-read.table("features.txt")
features<-featfile[,2]

train.x<-read.table("train/x_train.txt")
train.subject<-read.table("train/subject_train.txt")
train.activity<-read.table("train/y_train.txt")

print("loading raw datasets completed")

test.x<-read.table("test/x_test.txt")
test.subject<-read.table("test/subject_test.txt")
test.activity<-read.table("test/y_test.txt")

# Assembling data horizontally 
test.data<-cbind(test.x, test.subject,test.activity)
train.data<-cbind(train.x, train.subject,train.activity)
# Assembling data vertically 
data<-rbind(train.data,test.data)

print("Assembling data completed.")

# Removing features from parenthesis symbols and replacing "-" by "."
features<-gsub("\\(\\)","",features)
features<-gsub("-",".",features)

features.ext<-c(as.character(features),"Subject","Activity")
colnames(data)<-features.ext

print("Assigning labels to features completed")

# dataset reduced to mean and std
col.mean<-which(grepl("mean", features))
col.mean
col.std<-which(grepl("std", features))
cols<-sort(c(col.mean,col.std,length(features)+1,length(features)+2))
data<-data[,cols]

print("Selection of measurements variables completed")

# Replacing Activity IDs by their descriptive activity name
data<-merge(data,activity.labels, by.x="Activity", by.y="V1")
data<-data[,-1]
colnames(data)<-features.ext[cols]

print("Describing activity variable completed")

# Summarizing data with average for each pair of activity / subject
feat.measurment<-names(data)[c(-(length(data)-1),-length(data))]
data.melt<-melt(data, id=c("Subject","Activity"),measure.vars=feat.measurment)
data.cast<-dcast(data.melt, Subject + Activity ~ feat.measurment,mean)
print("Summarzing data completed")

write.table(data.cast,"summarized-data.txt")

print("Output generated: COMPLETED")

