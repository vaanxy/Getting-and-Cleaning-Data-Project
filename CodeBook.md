# Codebook


## run_analysis.R

### merged_set
* **class**: data.frame
* **discription**: merged data from the source data.

### tidy_data
* **class**: data.frame
* **discription**: an independent tidy data set with the average of each variable for each activity and each subject.

## read_and_merge_data.R

### test_labels
* **class**: data.frame
* **discription**: activities labels of the test set.

### test_subjects
* **class**: data.frame
* **discription**: subjects of the test set.

### test_set
* **class**: data.frame
* **discription**: the original test set.
 
### train_labels
* **class**: data.frame
* **discription**: activities labels of the test set.

### train_subjects
* **class**: data.frame
* **discription**: subjects of the train set.

### train_set
* **class**: data.frame
* **discription**: the original train set.

### activities
* **class**: data.frame
* **discription**: a map between labels and activities

### features
* **class**: data.frame
* **discription**: a discriptive name list of each feature

### merged_set
* **class**: data.frame
* **discription**: merged data from the source data.

## extract.R

### cols
* **class**: vector
* **discription**: the index of measurements on the mean and standard deviation for each measurement from the merged_set.

### tidy_data
* **class**: data.frame
* **discription**: an independent tidy data set with the mean and standard deviation for each measurement extracted from the merged_set.

### act_sbj
* **class**: vector
* **discription**: a vector combined the activities and subjects.

### calc_mean
* **class**: function
* **discription**: calculate the mean of each variable for each activity and each subject.


### tidy_set2
* **class**: data.frame
* **discription**: aan independent tidy data set with the average of each variable for each activity and each subject.