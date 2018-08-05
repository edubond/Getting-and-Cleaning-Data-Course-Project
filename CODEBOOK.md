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
