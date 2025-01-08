library(git2r)
library(mockery)


test_that("authors_commit function works", {
  skip()
  expect_s3_class(authors_commit("README.md"), "table")
})

test_that("get_all_commit_shas function works", {
  skip()
  expect_s3_class(get_all_commit_shas(repo_path = getwd()), "data.frame")
})


test_that("extract_name function works", {
  skip()
  # This is a mock blame, meaning it mimics the structure of git2r::blame output 
  # but does not rely on a real file or git repository.
  mock_blame <- list(
    hunks = list(
      list(orig_signature = list(name = "John Doe")),
      list(orig_signature = list(name = "Jane Smith"))
    )
  )
  
  # Mocking the file existence check to always return TRUE for valid paths
  stub(extract_name, "file.exists", function(path) {
    !is.null(path) && is.character(path) && path != "non_existent_file.R"
  })
  
  # We're overriding git2r::blame, so we can isolate the extract_name function 
  # from its dependency on a Git repository. It just makes it easier to test 
  # the logic of extract_name without requiring a specific environment or real data.
  stub(extract_name, "git2r::blame", function(path) mock_blame)
  
  # We're testing that the function extracts unique names correctly
  expect_equal(extract_name("mock_file"), c("John Doe", "Jane Smith"))
  
  # These tests ensure that the function will raise errors when given invalid inputs:
  # NULL input
  expect_error(extract_name(NULL), "Not a valid file path: file_name must be a valid path to an existing file.", fixed = TRUE)
  
  # If there's an invalid data type (such as list)
  expect_error(extract_name(list()), "Not a valid file path: file_name must be a valid path to an existing file.", fixed = TRUE)
  
  # Or if the file path is non_existent
  expect_error(extract_name("non_existent_file.R"), "Not a valid file path: file_name must be a valid path to an existing file.", fixed = TRUE)
})

test_that("git-related function works", {
  skip_if(!git2r::in_repository(getwd()), "Not in a Git repository")
  # Test logic here
})

