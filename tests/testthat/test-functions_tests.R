
test_that("git-related function works", {
  skip_if_not(git2r::in_repository(), "Not in a Git repository")
  
  repo <- git2r::repository()
  
  expect_s3_class(tbl_commits(repo), "tbl")
  
  expect_s3_class(summarize_commits(repo), "tbl")
  
  files <- repo$path |>
    dirname() |>
    list.files(pattern = "\\.", include.dirs = FALSE)
  one_file <- sample(files, size = 1)
  if (file.exists(one_file)) {
    expect_s3_class(tbl_blame(repo, path = one_file), "tbl")
    expect_s3_class(summarize_blame(repo, path = one_file), "tbl")
  }
})

test_that("llm works", {
  chat <- init_chat()
  expect_s3_class(chat, "Chat")
  expect_true(is_chat_ready(chat))
})
