test_that("omicsCentral packages returns character vector of package names", {
  out <- omicscentral_packages()
  expect_type(out, "character")
  expect_true("omicsCentralEda" %in% out)
})
