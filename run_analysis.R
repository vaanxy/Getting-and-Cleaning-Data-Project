analysis <- function () {
        ## source all the helper scripts
        source("read_and_merge_data.R")
        source("extract.R")
        ## read data
        merged_set <- read_and_merge_data()
        tidy_data <- extract(merged_set)
        tidy_data
}

