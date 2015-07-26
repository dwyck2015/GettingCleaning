# Codebook for tidyproject.txt  

Data output file was created using the R script run_analysis.R  

Created from the following dataset and for more information:
Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012  

## Important notes:
- All variables are combinations of training and test data.  
- Each subject performed each activity multiple times. Values presented are average result across a particular activity separately for each subject participitant.  

## Variable descriptions (column names)

###### subject  
  Identifier of the person who carried out the experiment (integer)  
    1  
    2  
    ...  
   30  

###### activity  
  Activity performed by subject (character)  
    LAYING  
    SITTING  
    STANDING  
    WALKING  
    WALKING_DOWNSTAIRS  
    WALKING_UPSTAIRS  

###### tBodyAccMeanX  
	mean body linear acceleration in X direction (real number; m/s)  
  
###### tBodyAccMeanY  
	mean body linear acceleration in Y direction (real number; m/s)  

###### tBodyAccMeanZ  
	mean body linear acceleration in Z direction (real number; m/s)  

###### tBodyAccStDevX  
	standard deviation of body linear acceleration in X direction (real number; m/s)  

###### tBodyAccStDevY  
	standard deviation of body linear acceleration in Y direction (real number; m/s)  

###### tBodyAccStDevZ  
	standard deviation of body linear acceleration in Z direction (real number; m/s)  

###### tGravityAccMeanX  
	mean gravity acceleration in X direction (real number; m/s)  

###### tGravityAccMeanY  
	mean gravity acceleration in Y direction (real number; m/s)  

###### tGravityAccMeanZ  
	mean gravity acceleration in Z direction (real number; m/s)  

###### tGravityAccStDevX  
	standard deviation of gravity acceleration in X direction (real number; m/s)  

###### tGravityAccStDevY  
	standard deviation of gravity acceleration in Y direction (real number; m/s)  

###### tGravityAccStDevZ  
	standard deviation of gravity acceleration in Z direction (real number; m/s)  

###### tBodyAccJerkMeanX  
	mean body jerk signal in X direction (real number; m/s)  

###### tBodyAccJerkMeanY  
	mean body jerk signal in Y direction (real number; m/s)  

###### tBodyAccJerkMeanZ  
	mean body jerk signal in Z direction (real number; m/s)  

###### tBodyAccJerkStDevX  
	standard deviation of body jerk signal in X direction (real number; m/s)  

###### tBodyAccJerkStDevY  
	standard deviation of body jerk signal in Y direction (real number; m/s)  

###### tBodyAccJerkStDevZ  
	standard deviation of body jerk signal in Z direction (real number; m/s)  

###### tBodyGyroMeanX  
	mean body angular velocity signal in X direction (real number; m/s)  

###### tBodyGyroMeanY  
	mean body angular velocity signal in Y direction (real number; m/s)  

###### tBodyGyroMeanZ  
	mean body angular velocity signal in Z direction (real number; m/s)  

###### tBodyGyroStDevX  
	standard deviation of body angular velocity signal in X direction (real number; m/s)  

###### tBodyGyroStDevY  
	standard deviation of body angular velocity signal in Y direction (real number; m/s)  

###### tBodyGyroStDevZ  
	standard deviation of body angular velocity signal in Z direction (real number; m/s)  

###### tBodyGyroJerkMeanX  
	mean body angular velocity jerk signal in X direction (real number; m/s)  

###### tBodyGyroJerkMeanY  
	mean body angular velocity jerk signal in Y direction (real number; m/s)  

###### tBodyGyroJerkMeanZ  
	mean body angular velocity jerk signal in Z direction (real number; m/s)  

###### tBodyGyroJerkStDevX  
	standard deviation of body angular velocity jerk signal in X direction (real number; m/s)  

###### tBodyGyroJerkStDevY  
	standard deviation of body angular velocity jerk signal in Y direction (real number; m/s)  

###### tBodyGyroJerkStDevZ  
	standard deviation of body angular velocity jerk signal in Z direction (real number; m/s)  

###### tBodyAccMagMean  
	mean Euclidean norm magnitude of body linear acceleration (real number; m/s)  

###### tBodyAccMagStDev  
	standard deviation of Euclidean norm magnitude of body linear acceleration (real number; m/s)  

###### tGravityAccMagMean  
	mean Euclidean norm magnitude of gravity acceleration (real number; m/s)  

###### tGravityAccMagStDev  
	standard deviation of Euclidean norm magnitude of gravity acceleration (real number; m/s)  

###### tBodyAccJerkMagMean  
	mean Euclidean norm magnitude of body jerk signal (real number; m/s)  

###### tBodyAccJerkMagStDev  
	standard deviation of Euclidean norm magnitude of body jerk signal (real number; m/s)  

###### tBodyGyroMagMean  
	mean Euclidean norm magnitude of body angular velocity signal (real number; m/s)  

###### tBodyGyroMagStDev  
	standard deviation of Euclidean norm magnitude of body angular velocity signal (real number; m/s)  

###### tBodyGyroJerkMagMean  
	mean Euclidean norm magnitude of body angular velocity jerk signal (real number; m/s)  

###### tBodyGyroJerkMagStDev  
	standard deviation Euclidean norm magnitude of body angular velocity jerk signal (real number; m/s)  

###### fBodyAccMeanX  
	mean body linear acceleration in X direction (real number; Hz)  

###### fBodyAccMeanY  
	mean body linear acceleration in Y direction (real number; Hz)  

###### fBodyAccMeanZ  
	mean body linear acceleration in Z direction (real number; Hz)  

###### fBodyAccStDevX  
	standard deviation of body linear acceleration in X direction (real number; Hz)  

###### fBodyAccStDevY  
	standard deviation of body linear acceleration in Y direction (real number; Hz)  

###### fBodyAccStDevZ  
	standard deviation of body linear acceleration in Z direction (real number; Hz)  

###### fBodyAccJerkMeanX  
	mean body jerk signal in X direction (real number; Hz)  

###### fBodyAccJerkMeanY  
	mean body jerk signal in Y direction (real number; Hz)  

###### fBodyAccJerkMeanZ  
	mean body jerk signal in Z direction (real number; Hz)  

###### fBodyAccJerkStDevX  
	standard deviation of body jerk signal in X direction (real number; Hz)  

###### fBodyAccJerkStDevY  
	standard deviation of body jerk signal in Y direction (real number; Hz)  

###### fBodyAccJerkStDevZ  
	standard deviation of body jerk signal in Z direction (real number; Hz)  

###### fBodyGyroMeanX  
	mean body angular velocity signal in X direction (real number; Hz)  

###### fBodyGyroMeanY  
	mean body angular velocity signal in Y direction (real number; Hz)  

###### fBodyGyroMeanZ  
	mean body angular velocity signal in Z direction (real number; Hz)  

###### fBodyGyroStDevX  
	standard deviation of body angular velocity signal in X direction (real number; Hz)  

###### fBodyGyroStDevY  
	standard deviation of body angular velocity signal in Y direction (real number; Hz)  

###### fBodyGyroStDevZ  
	standard deviation of body angular velocity signal in Z direction (real number; Hz)  

###### fBodyAccMagMean  
	mean Euclidean norm magnitude of body linear acceleration (real number; Hz)  

###### fBodyAccMagStDev  
	standard deviation of Euclidean norm magnitude of body linear acceleration (real number; Hz)  

###### fBodyBodyAccJerkMagMean  
	mean Euclidean norm magnitude of body jerk signal (real number; Hz)  

###### fBodyBodyAccJerkMagStDev  
	standard deviation of Euclidean norm magnitude of body jerk signal (real number; Hz)  

###### fBodyBodyGyroMagMean  
	mean Euclidean norm magnitude of body angular velocity signal (real number; Hz)  

###### fBodyBodyGyroMagStDev  
	standard deviation of Euclidean norm magnitude of body angular velocity signal (real number; Hz)  

###### fBodyBodyGyroJerkMagMean  
	mean Euclidean norm magnitude of body angular velocity jerk signal (real number; Hz)  

###### fBodyBodyGyroJerkMagStDev  
	standard deviation Euclidean norm magnitude of body angular velocity jerk signal (real number; Hz)  
