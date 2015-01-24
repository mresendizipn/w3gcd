#instructions
=======
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