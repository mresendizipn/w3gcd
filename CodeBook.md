#instructions
=======

##Description of Variables
	* id_subject (num) Each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30
	* id_activity (Factor) Activity name  
The folowing features are the average of each variable for each activity and each subject, grouped by id_activity and id_subject
	* tBodyAcc.std...X               (num)
	* tBodyAcc.std...Y               (num)
	* tBodyAcc.std...Z               (num)
	* tGravityAcc.std...X            (num) 
	* tGravityAcc.std...Y            (num) 
	* tGravityAcc.std...Z            (num) 
	* tBodyAccJerk.std...X           (num) 
	* tBodyAccJerk.std...Y           (num) 
	* tBodyAccJerk.std...Z           (num) 
	* tBodyGyro.std...X              (num) 
	* tBodyGyro.std...Y              (num) 
	* tBodyGyro.std...Z              (num) 
	* tBodyGyroJerk.std...X          (num) 
	* tBodyGyroJerk.std...Y          (num) 
	* tBodyGyroJerk.std...Z          (num) 
	* tBodyAccMag.std..              (num) 
	* tGravityAccMag.std..           (num) 
	* tBodyAccJerkMag.std..          (num) 
	* tBodyGyroMag.std..             (num) 
	* tBodyGyroJerkMag.std..         (num) 
	* fBodyAcc.std...X               (num)  
	* fBodyAcc.std...Y               (num)  
	* fBodyAcc.std...Z               (num)  
	* fBodyAccJerk.std...X           (num)  
	* fBodyAccJerk.std...Y           (num)  
	* fBodyAccJerk.std...Z           (num)  
	* fBodyGyro.std...X              (num)  
	* fBodyGyro.std...Y              (num)  
	* fBodyGyro.std...Z              (num)  
	* fBodyAccMag.std..              (num)  
	* fBodyBodyAccJerkMag.std..      (num)  
	* fBodyBodyGyroMag.std..         (num)  
	* fBodyBodyGyroJerkMag.std..     (num)  
	* tBodyAcc.mean...X              (num)  
	* tBodyAcc.mean...Y              (num)  
	* tBodyAcc.mean...Z              (num)  
	* tGravityAcc.mean...X           (num)  
	* tGravityAcc.mean...Y           (num)  
	* tGravityAcc.mean...Z           (num)  
	* tBodyAccJerk.mean...X          (num)  
	* tBodyAccJerk.mean...Y          (num)  
	* tBodyAccJerk.mean...Z          (num)  
	* tBodyGyro.mean...X             (num)  
	* tBodyGyro.mean...Y             (num)  
	* tBodyGyro.mean...Z             (num)  
	* tBodyGyroJerk.mean...X         (num)  
	* tBodyGyroJerk.mean...Y         (num)  
	* tBodyGyroJerk.mean...Z         (num)  
	* tBodyAccMag.mean..             (num)  
	* tGravityAccMag.mean..          (num)  
	* tBodyAccJerkMag.mean..         (num)  
	* tBodyGyroMag.mean..            (num)  
	* tBodyGyroJerkMag.mean..        (num)  
	* fBodyAcc.mean...X              (num)  
	* fBodyAcc.mean...Y              (num)  
	* fBodyAcc.mean...Z              (num)  
	* fBodyAcc.meanFreq...X          (num)  
	* fBodyAcc.meanFreq...Y          (num)  
	* fBodyAcc.meanFreq...Z          (num)  
	* fBodyAccJerk.mean...X          (num)  
	* fBodyAccJerk.mean...Y          (num)  
	* fBodyAccJerk.mean...Z          (num)  
	* fBodyAccJerk.meanFreq...X      (num)  
	* fBodyAccJerk.meanFreq...Y      (num)  
	* fBodyAccJerk.meanFreq...Z      (num)  
	* fBodyGyro.mean...X             (num)  
	* fBodyGyro.mean...Y             (num)  
	* fBodyGyro.mean...Z             (num)  
	* fBodyGyro.meanFreq...X         (num)  
	* fBodyGyro.meanFreq...Y         (num)  
	* fBodyGyro.meanFreq...Z         (num)  
	* fBodyAccMag.mean..             (num)  
	* fBodyAccMag.meanFreq..         (num)  
	* fBodyBodyAccJerkMag.mean..     (num)  
	* fBodyBodyAccJerkMag.meanFreq.. (num)  
	* fBodyBodyGyroMag.mean..        (num)  
	* fBodyBodyGyroMag.meanFreq..    (num)  
	* fBodyBodyGyroJerkMag.mean..    (num)  
	* fBodyBodyGyroJerkMag.meanFreq..(num)  

You have to change your work directory where you downloaded the Github repository.Then you can run the file "run_analysis.R", this file execute all the task 
1. Loading Data 
	* Loading labels of fields and activities
	* Loading data from test
	* Loading data from training 
	* Getting features only of the functions std() & mean()
2. Tranform Data
	* Create factor with Test activities
	* Create data.frame 'Test', merge (subjects + id_activity + name_activity + features). Only the measurements on the mean and standard deviation     
	* Create factor with Factor activities
	* Create data.frame 'Train', merge (subjects + id_activity + name_activity + features).  Only the measurements on the mean and standard deviation
	* Merge data of Train & Test
	* Creating a independent tidy data set with the average of each variable for each activity and each subject.
	*Save file dataSetAverage.txt