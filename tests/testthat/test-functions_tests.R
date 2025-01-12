
test_that("git-related function works", {
  skip_if_not(git2r::in_repository(), "Not in a Git repository")
  
  repo <- git2r::repository()
  
  expect_s3_class(tbl_commits(repo), "tbl")
  
  expect_s3_class(summarize_commits(repo), "tbl")
  
  files <- repo$path |>
    dirname() |>
    list.files(pattern = "\\.", include.dirs = FALSE)
  one_file <- sample(files, size = 1)
  if (length(files) > 0) {
    expect_s3_class(tbl_blame(repo, path = one_file), "tbl")
    expect_s3_class(summarize_blame(repo, path = one_file), "tbl")
  }
})

