#CodeBook

The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. The subjects are coded from 1 to 30.

Each subject has 6 action labels:

1. WALKING
2. WALKING_UPSTAIRS
3. WALKING_DOWNSTAIRS
4. SITTING
5. STANDING
6. LAYING

There are 79 features, the names are coded like:

1. "t" & "f" mean time domain and frequency domain.
2. "Acc" and "Gyro" mean accelerometer and gyroscope data.
3. "Body" and "Gravaity" are different signal data.
4. "AccJerk" and "GyroJerk" are Jerk singals.
5. "Mag" means magnitude of the signals.
6. "X", "Y", "Z" corresponds 3 different directions.
7. All the time domain features both have "mean" and "std" data.
8. All the frequency features have "mean", "std" and "meanFreq" data.

All the combinations give us 79 features.

For example, "tBodyAcc-mean()-X" means Time Domain Body Accelerometer mean value in the X direction.

For each record:

- All the feature values are normalized and bounded within [-1, 1].
- Each feature vector is a row on the text file.