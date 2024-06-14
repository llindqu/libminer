test_that("lib_summary returns expected results", {
  res <- lib_summary() #gets result of calling lib_summary
  expect_s3_class(res, "data.frame") #states a few expectations - properties we expect to be true about the output. Ex it is a dataframe.
  expect_equal(ncol(res), 2) #expect 2 columns.
  expect_equal(names(res), c("Library", "n_packages")) #these should be the column names
  expect_type(res$Library, "character") #the library column should be type chr
  expect_type(res$n_packages, "integer") #the library packages should be type int.
})

test_that("lib_summary fails appropriately", {
  expect_error(lib_summary("foo"), "unused argument")
})

