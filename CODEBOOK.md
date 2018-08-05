# UCI HAR Dataset
After downloading and unzipping the **UCI HAR Dataset** you'll find two folders and four text files.
One is a **README** which give you a bunch of useful information about the dataset. Then there are a **featuresinfo** file that describe how the features of the dataset are obteined 
and from where these comes from. The **features** file is a complete list of each variables of the features in the dataset. The last textfile, 
**activity_labels**, contains the six activities that the subject can do in this dataset: WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING LAYING.
<br/>The two folders contain the data of the research, we are interested in the the text files inside each.
In the **test** folder we are interested in the **subject_test**, **X_test** and **y_test** files inside it.
In the **train** folder we are interested in the **subject_train**, **X_train** and **y_train** files inside it.
The variables in the data X are sensor signals measured with waist-mounted smartphone from 30 subjects. 
The variable in the data Y indicates activity type the subjects performed during recording.
The **subject** data are an identifier of the subjects who made the experiments.
<br/>The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. 
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
wearing a smartphone (Samsung Galaxy S II) on the waist, using its embedded accelerometer 
and gyroscope.
The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating
the training data and 30% the test data. 
# Tidydata dataset
This dataset is the result of the istructions of this assigment. To create that i used the **run_analysis.R** code.
This code first download the dataset zip file in a folder called Data then unzip the dataset inside it. Then it reads the text file inside 
the train and test folders and merge these files to create one new dataset. After this, it subsets only the measurements on the mean and standard deviation for each measurement, 
use the **activity_labels** file to name the activity in the new dataset and refine the dataset with appropriated names.
Finally it creates a different dataset from the previous one with the average of each variable for each activity and each subject, the **tidydata** file.

<br/>The **tidydata** file is composed of 180 observations and 68 variables. <br/>The variables are: "Subject",                                        "Activity","TimeBodyAccelerometer-mean()-X","TimeBodyAccelerometer-mean()-Y",
"TimeBodyAccelerometer-mean()-Z"               ,"TimeBodyAccelerometer-std()-X", 
"TimeBodyAccelerometer-std()-Y",               "TimeBodyAccelerometer-std()-Z"   
,"TimeGravityAccelerometer-mean()-X",           "TimeGravityAccelerometer-mean()-Y"             
 ,"TimeGravityAccelerometer-mean()-Z",              "TimeGravityAccelerometer-std()-X"              
 ,"TimeGravityAccelerometer-std()-Y",               "TimeGravityAccelerometer-std()-Z"              
 ,"TimeBodyAccelerometerJerk-mean()-X",             "TimeBodyAccelerometerJerk-mean()-Y"            
 ,"TimeBodyAccelerometerJerk-mean()-Z",             "TimeBodyAccelerometerJerk-std()-X"             
 ,"TimeBodyAccelerometerJerk-std()-Y",              "TimeBodyAccelerometerJerk-std()-Z"             
 ,"TimeBodyGyroscope-mean()-X",                     "TimeBodyGyroscope-mean()-Y"                    
 ,"TimeBodyGyroscope-mean()-Z",                     "TimeBodyGyroscope-std()-X"                     
 ,"TimeBodyGyroscope-std()-Y",                      "TimeBodyGyroscope-std()-Z"                     
,"TimeBodyGyroscopeJerk-mean()-X",                 "TimeBodyGyroscopeJerk-mean()-Y"                
,"TimeBodyGyroscopeJerk-mean()-Z",                 "TimeBodyGyroscopeJerk-std()-X"                 
 ,"TimeBodyGyroscopeJerk-std()-Y" ,                  "TimeBodyGyroscopeJerk-std()-Z"                 
,"TimeBodyAccelerometerMagnitude-mean()"     ,     "TimeBodyAccelerometerMagnitude-std()"          
,"TimeGravityAccelerometerMagnitude-mean()"  ,      "TimeGravityAccelerometerMagnitude-std()"       
,"TimeBodyAccelerometerJerkMagnitude-mean()" ,      "TimeBodyAccelerometerJerkMagnitude-std()"      
,"TimeBodyGyroscopeMagnitude-mean()"            ,  "TimeBodyGyroscopeMagnitude-std()"              ,"TimeBodyGyroscopeJerkMagnitude-mean()"       ,   "TimeBodyGyroscopeJerkMagnitude-std()"          
,"FrequencyBodyAccelerometer-mean()-X"        ,    "FrequencyBodyAccelerometer-mean()-Y"           
,"FrequencyBodyAccelerometer-mean()-Z"       ,     "FrequencyBodyAccelerometer-std()-X"            
,"FrequencyBodyAccelerometer-std()-Y"       ,      "FrequencyBodyAccelerometer-std()-Z"            
,"FrequencyBodyAccelerometerJerk-mean()-X" ,       "FrequencyBodyAccelerometerJerk-mean()-Y"       
,"FrequencyBodyAccelerometerJerk-mean()-Z",        "FrequencyBodyAccelerometerJerk-std()-X"        
,"FrequencyBodyAccelerometerJerk-std()-Y",         "FrequencyBodyAccelerometerJerk-std()-Z"        
,"FrequencyBodyGyroscope-mean()-X" ,               "FrequencyBodyGyroscope-mean()-Y"               
,"FrequencyBodyGyroscope-mean()-Z",                "FrequencyBodyGyroscope-std()-X"                
,"FrequencyBodyGyroscope-std()-Y",                 "FrequencyBodyGyroscope-std()-Z"                
,"FrequencyBodyAccelerometerMagnitude-mean()",     "FrequencyBodyAccelerometerMagnitude-std()"     
,"FrequencyBodyAccelerometerJerkMagnitude-mean()", "FrequencyBodyAccelerometerJerkMagnitude-std()" 
,"FrequencyBodyGyroscopeMagnitude-mean()",          "FrequencyBodyGyroscopeMagnitude-std()"       ,"FrequencyBodyGyroscopeJerkMagnitude-mean()"   ,   "FrequencyBodyGyroscopeJerkMagnitude-std()"  
<br/> "Subject" is a int class, "Activity" a factor class and the rest of the variables are of num class. 
