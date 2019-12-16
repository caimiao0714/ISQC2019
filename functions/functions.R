# Functions to accompany our analysis

#_________________________________________________________________________
# Determining and Plotting the Data Types for all columns
# Source:
# https://stackoverflow.com/questions/21125222/determine-the-data-types-of-a-data-frames-columns

data.types <- function(df) {
  col.classes <- lapply(df, class)
  col.classes.df <- unlist(col.classes) %>%  data.frame()
  temp.data <- table(col.classes.df) %>% sort(decreasing=T) %>% data.frame()
  return(temp.data)
}