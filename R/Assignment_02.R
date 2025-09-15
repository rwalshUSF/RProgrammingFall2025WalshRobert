# This is a corrected version of the myMean() function that correctly returns
# the mean of an input variable 'x'

#' myMean()
#'
#' @param x A numeric vector
#'
#' @returns the calculated mean of the vector
#' @export
#'
#' @examples
#' x<-c(10,10,10)
#' myMean(x)
myMean <- function(x) {
  return(sum(x) / length(x))
}
