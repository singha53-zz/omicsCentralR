#' eda
#'
#' build various biomarker panels
#' @param esetList list of nxp matrices or dataframes or a mix of both (expression sets)
#' @param response an optional vector of length n. This is a continuous or categorical grouping variable.
#' @param demo nxp dataframe of demographics data (optional)
#' @param ncomp number of principal components to retain (interger)
#' @export
eda = function(esetList, response=NULL, demo=NULL, ncomp = 2){
  # check if esetList exists
  assertthat::assert_that(!missing(esetList), msg = "esetList is missing")
  # check if esetList is a list
  assertthat::assert_that(is.list(esetList), msg = "esetList is not a list")
  # check if each element of esetList is matrix or dataframe
  assertthat::assert_that(all(sapply(esetList, is.matrix)) | all(sapply(esetList, is.data.frame)), msg = "esetList contains non-matrices/dataframes")
  # check if any missing values exist in eset
  assertthat::assert_that(any(is.na(unlist(esetList))))

  return(1)
}
