# This is a corrected version of the myMean() function that correctly returns
# the mean of 'assignment2'

assignment2 <- c(16, 18, 14, 22, 27, 17, 19, 17, 17, 22, 20, 22)

myMean <- function(assignment2) {
  return(sum(assignment2) / length(assignment2))
}

# Run myMean(assignment2) and record the output:
myMean(assignment2)
