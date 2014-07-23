CookBOok.MD
========================================================

**How to use the file and what output to expect**

1. Reads Test & Train data set from the following locations
a) C:\R\UCI HAR Dataset\train\X_train.txt
b) C:\R\UCI HAR Dataset\test\X_test.txt

2. This combines the 2 datasets into a single dataset with variable name x_Cons

3. It reads features from the file "C:\R\UCI HAR Dataset\features.txt" and adds the features as column names for the consolidated data set (x_Cons)

4. It then filters out any variable that does not contain mean or std in the column names. meanFreq is also filtered out as the features_info ("C:\R\UCI HAR Dataset\features_info.txt") document clearly states that the meanFreq weighted average of the frequency components and such such is not a statistics of interest. The final variable after this exercise is "DataSet"

5. The subject files mentioned below are then appended to the dataset in the  same order. This column is named "Subject"
- C:\R\UCI HAR Dataset\train\subject_train.txt
- C:\R\UCI HAR Dataset\test\subject_test.txt

6. The labels are read for both the training sets and test sets. The Activity labels are read from (c) mentioned below. The values in the label sets are replaced by their string value. This column is named "Activity". This is again appended to the DataSet in the same order.
- C:\R\UCI HAR Dataset\train\y_train.txt
- C:\R\UCI HAR Dataset\test\y_test.txt
- C:\R\UCI HAR Dataset\activity_labels.txt

7. This dataset is then saved at the following location with the name "DataSet.txt"
- C:\R\UCI HAR Dataset

8. The DataSet is now summarized by Activity / Subject and the mean of all the columns are calculated. This is saved in the below mentioned location with the name "TidySet.txt"

Note: All variables are removed from the memory after their utilization. If you need to examine any specific variable, please remember to comment out the remove(var) line of code.


**Column Names of the dataset**

*DATASET*

1.  Activity            -   The activity as described the activity_labels file
2.  Subject             -   Id of the subject performing the activity

The columns are for mean of the value
3.  tBodyAcc-mean()-X   -   Body Acceleration Signal in X direction
4.  tBodyAcc-mean()-Y   -   Body Acceleration Signal in Y direction         
5.  tBodyAcc-mean()-Z   -   Body Acceleration Signal in Z direction
6.  tGravityAcc-mean()-X - Gravity Acceleration Signals in X direction
7.  tGravityAcc-mean()-Y - Gravity Acceleration Signals in Y direction
8.  tGravityAcc-mean()-Z - Gravity Acceleration Signals in Z direction
9.  tBodyAccJerk-mean()-X - Body Acceleration Jerk Signal in X direction
10. tBodyAccJerk-mean()-Y - Body Acceleration Jerk Signal in Y direction     
11. tBodyAccJerk-mean()-Z  - Body Acceleration Jerk Signal in X direction
12. tBodyGyro-mean()-X    - Body Gyro in X direction         
13. tBodyGyro-mean()-Y - Body Gyro in Y direction         
14. tBodyGyro-mean()-Z - Body Gyro in Z direction        
15. tBodyGyroJerk-mean()-X - Body linear acceleration in X direction
16. tBodyGyroJerk-mean()-Y - Body linear acceleration in Y direction
17. tBodyGyroJerk-mean()-Z  - Body linear acceleration in Z direction
18. tBodyAccMag-mean() - Euclidean norm        
19. tGravityAccMag-mean() - Euclidean norm        
20. tBodyAccJerkMag-mean() -  - Euclidean norm
21. tBodyGyroMag-mean()  - Euclidean norm        
22. tBodyGyroJerkMag-mean() -  - Euclidean norm
23. fBodyAcc-mean()-X - After applying FFT in X direction
24. fBodyAcc-mean()-Y - After applying FFT in Y direction         
25. fBodyAcc-mean()-Z - After applying FFT in X direction
26. fBodyAccJerk-mean()-X - After applying FFT in X direction     
27. fBodyAccJerk-mean()-Y  - After applying FFT in Y direction
28. fBodyAccJerk-mean()-Z  - After applying FFT in Z direction
29. fBodyGyro-mean()-X   - After applying FFT in X direction
30. fBodyGyro-mean()-Y   - After applying FFT in Y direction        
31. fBodyGyro-mean()-Z   - After applying FFT in Z direction
32. fBodyAccMag-mean()  - Estimated variable of the feature vector
33. fBodyBodyAccJerkMag-mean()  - Estimated variable of the feature vector
34. fBodyBodyGyroMag-mean()   - Estimated variable of the feature vector
35. fBodyBodyGyroJerkMag-mean()   - Estimated variable of the feature vector

The below columns are the std of the variables

36.  tBodyAcc-std()-X   -   Body Acceleration Signal in X direction
37.  tBodyAcc-std()-Y   -   Body Acceleration Signal in Y direction         
38.  tBodyAcc-std()-Z   -   Body Acceleration Signal in Z direction
39.  tGravityAcc-std()-X - Gravity Acceleration Signals in X direction
40.  tGravityAcc-std()-Y - Gravity Acceleration Signals in Y direction
41.  tGravityAcc-std()-Z - Gravity Acceleration Signals in Z direction
42.  tBodyAccJerk-std()-X - Body Acceleration Jerk Signal in X direction
43. tBodyAccJerk-std()-Y - Body Acceleration Jerk Signal in Y direction     
44. tBodyAccJerk-std()-Z  - Body Acceleration Jerk Signal in X direction
45. tBodyGyro-std()-X    - Body Gyro in X direction         
46. tBodyGyro-std()-Y - Body Gyro in Y direction         
47. tBodyGyro-std()-Z - Body Gyro in Z direction        
48. tBodyGyroJerk-std()-X - Body linear acceleration in X direction
49. tBodyGyroJerk-std()-Y - Body linear acceleration in Y direction
50. tBodyGyroJerk-std()-Z  - Body linear acceleration in Z direction
51. tBodyAccMag-std() - Euclidean norm        
52. tGravityAccMag-std() - Euclidean norm        
53. tBodyAccJerkMag-std() -  - Euclidean norm
54. tBodyGyroMag-std()  - Euclidean norm        
55. tBodyGyroJerkMag-std() -  - Euclidean norm
56. fBodyAcc-std()-X - After applying FFT in X direction
57. fBodyAcc-std()-Y - After applying FFT in Y direction         
58. fBodyAcc-std()-Z - After applying FFT in X direction
59. fBodyAccJerk-std()-X - After applying FFT in X direction     
60. fBodyAccJerk-std()-Y  - After applying FFT in Y direction
61. fBodyAccJerk-std()-Z  - After applying FFT in Z direction
62. fBodyGyro-std()-X   - After applying FFT in X direction
63. fBodyGyro-std()-Y   - After applying FFT in Y direction        
64. fBodyGyro-std()-Z   - After applying FFT in Z direction
65. fBodyAccMag-std()  - Estimated variable of the feature vector
66. fBodyBodyAccJerkMag-std()  - Estimated variable of the feature vector
67. fBodyBodyGyroMag-std()   - Estimated variable of the feature vector
68. fBodyBodyGyroJerkMag-std()   - Estimated variable of the feature vector

*Note -* The corresponding column names in the TidySet are the mean of the values taken by Activity / Subject

*Variables Used*

- x_train - Data as read from "x_train.txt"
- x_test - Data as read from "x_test.txt"
- x_Cons - Data got by merging x_train & x_test
- Features - As read from "Features.txt"
- tempMeanVals - Segregated mean values from x_Cons
- tempStdVals - Segregated std values from x_Cons
- DataSet - The set where the data is being consolidated
- sub_train - As read from "subject_train.txt"
- sub_test - As read from "subject_test.txt"
- sub_Cons - Subject fields consolidated
- y_test - label data as read from m"y_test.txt"
- y_train - label data as read from m"y_train.txt"
- Activities - As read from "Activity_label.txt"
- y_Cons - label data consolidated
- TidySet - Final tidy set
