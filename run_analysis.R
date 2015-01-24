#####################################################
#                   Loading Data                    #
#####################################################

#####Loading labels of fields and activities
  featuresLabels <- read.table("./data/features.txt",col.names=c("id_feature","name_feature"))
  activityLabels <- read.table("./data/activity_labels.txt",col.names = c("id_activity","name_activity"))

#####Loading data from test
  subjectsTest <- read.table("./data/test/subject_test.txt",col.names = c("id_subject"))
  featuresTest <- read.table("./data/test/X_test.txt",col.names = featuresLabels$name_feature)
  activityTest <- read.table("./data/test/y_test.txt",col.names = "id_activity")

#####Loading data from training 
  subjectsTrain <- read.table("./data/train/subject_train.txt",col.names = c("id_subject"))
  featuresTrain <- read.table("./data/train/X_train.txt",col.names = featuresLabels$name_feature)
  activityTrain <- read.table("./data/train/y_train.txt",col.names = "id_activity")
  
#####Getting features only of the functions std() & mean()
  featuresStdMean <- c(grep("std()",featuresLabels$name_feature),grep("mean()",featuresLabels$name_feature))

######################################################
#                 Tranform Data                      #
######################################################


####Preparate data of Test

  #Create factor with Test activities
    activityTestFactor <- factor(activityLabels$name_activity[activityTest$id_activity])
  
  #Create data.frame 'Test', merge (subjects + id_activity + name_activity + features). Only the measurements on the mean and standard deviation     
    dataSetTest <- cbind(id_subjects = subjectsTest,id_activity = activityTest,name_activity = activityTestFactor,src = "test",featuresTest[,featuresStdMean])

####Preparate data of Train

  #Create factor with Factor activities
    activityTrainFactor <- factor(activityLabels$name_activity[activityTrain$id_activity])
    
  #Create data.frame 'Train', merge (subjects + id_activity + name_activity + features).  Only the measurements on the mean and standard deviation         
    dataSetTrain <- cbind(id_subjects = subjectsTrain,id_activity = activityTrain,name_activity = activityTrainFactor,src = "train",featuresTrain[,featuresStdMean])

####Merge data of Train & Test
  finalDataSet <- rbind(dataSetTrain,dataSetTest)

#####Creating a independent tidy data set with the average of each variable for each activity and each subject.
  subSetData <- finalDataSet[,-c(3,4)]
  dataSetAverage <- aggregate(subSetData,by=list(subSetData$id_subject,subSetData$id_activity),FUN=mean)
  dataSetAverage<-dataSetAverage[,-c(1,2)]
  dataSetAverage$id_activity <- activityLabels$name_activity[dataSetAverage$id_activity]
  #Save file dataSetAverage.txt
  write.table(dataSetAverage,file = "dataSetAverage.txt",row.name=FALSE)
