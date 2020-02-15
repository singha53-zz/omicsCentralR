# expected error when esetList is missing
test_that("throw error when esetList is missing", code = {
  expect_error(eda(), "esetList is missing", fixed=TRUE)
})
# fixed = TRUE in call so string is not treated as regular expression but literally.
# source: https://stackoverflow.com/questions/17590409/how-to-use-testthat-expect-error-correctly

# expected error when esetList is not a list
test_that("esetList is not a list", code = {
  esetList <- 3
  expect_error(eda(esetList), "esetList is not a list", fixed=TRUE)
})

# expected error when esetList is not a list
test_that("esetList contains non-matrices/dataframes", code = {
  esetList <- list(x = data.frame(), y = matrix(), z = 3)
  expect_error(eda(esetList), "esetList contains non-matrices/dataframes", fixed=TRUE)
})

