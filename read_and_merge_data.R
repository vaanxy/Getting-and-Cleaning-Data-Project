## read data
read_and_merge_data <- function () {
        test_labels <- read.table(file.path("UCI HAR Dataset", "test", "y_test.txt"), sep = "\n", col.names = "label")
        message("read and merge data, please wait...")
        test_subjects <- read.table(file.path("UCI HAR Dataset", "test", "subject_test.txt"), sep = "\n", col.names = "subject")
        test_set <- read.table(file.path("UCI HAR Dataset", "test", "X_test.txt"))
        train_labels <- read.table(file.path("UCI HAR Dataset", "train", "y_train.txt"), sep = "\n", col.names = "label")
        train_subjects <- read.table(file.path("UCI HAR Dataset", "train", "subject_train.txt"), sep = "\n", col.names = "subject")
        train_set <- read.table(file.path("UCI HAR Dataset", "train", "X_train.txt"))
        activities <- read.table(file.path("UCI HAR Dataset", "activity_labels.txt"), col.names = c("label", "activity"))
        features <- read.table(file.path("UCI HAR Dataset", "features.txt"), col.names = c("id", "name"))
        test_set <- cbind(test_labels, test_subjects, test_set)
        train_set <- cbind(train_labels, train_subjects, train_set)
        ## binding test set and train set
        merged_set <- rbind(test_set, train_set)
        ## merge activities names by label
        merged_set <- merge(merged_set, activities)
        ## add discriptive names
        names(merged_set) <- c( "label", "subject", as.character(features$name), "activity")
        message("finished")
        merged_set
}