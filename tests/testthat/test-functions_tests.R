test_that("authors_commit function works", {
  expect_s3_class(authors_commit("README.md"), "table")
})

test_that("check_file function works", {
  expect_equal(check_file("random.R"), "This file does not exist")
})

test_that("get_all_commit_shas function works", {
  expect_s3_class(get_all_commit_shas(repo_path = getwd()), "data.frame")
})

test_that("extract_name function works", {
  mock_hunk <- list(final_signature = list(name = "John Doe"))
  
  # Test correct output for valid input
  expect_equal(extract_name(mock_hunk), "John Doe")
  
  # Test for error handling with invalid input
  expect_error(extract_name(NULL))
  expect_error(extract_name(list()))
})
