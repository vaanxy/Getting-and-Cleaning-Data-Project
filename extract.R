extract <- function(merged_set) {
        message("extracting tidy data")
        ## Extracts only the measurements on the mean and standard deviation for each measurement.
        cols <- c(grep("mean()", names(merged_set)), grep("std()", names(merged_set)))
        tidy_set <- cbind(activity = merged_set$activity, subject = merged_set$subject, merged_set[,cols])
        ## Extracts only the measurements on the mean and standard deviation for each measurement.
        cols <- c(grep("mean()", names(merged_set)), grep("std()", names(merged_set)))
        tidy_set <- cbind(activity = merged_set$activity, subject = merged_set$subject, merged_set[,cols])
        act_sbj <- paste0(tidy_set$activity,tidy_set$subject)
        ## creates a second, independent tidy data set with the average of each variable for each activity and each subject.
        calc_mean <- function (x) {tapply(x, act_sbj, mean)}
        tidy_set2 <- sapply(tidy_set[,3:81], calc_mean)
        ##  write to txt
        write.table(tidy_set2, "tidy set.txt", row.name=FALSE)
        message("extraction finished")
        tidy_set2
}