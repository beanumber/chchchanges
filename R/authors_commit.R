#' @title Get Authors of a Commit
#' @name authors_commit
#'@param file_name a file in the git repository
#'@author Debora Camacho
#'@examples
#'authors_commit(file_name = "author.R")
#'@returns a data frame with the total amount of commits per user
#'@import git2r
#'@import tidyverse
#'@import purrr
#'@export
#'
authors_commit <- function(file_name) {
  x <- git2r::blame(path = file_name)
  hunk_name <- x$hunks |> purrr::map_chr(function(x)
    x[["orig_signature"]][["name"]])
  
  total <- length(hunk_name)
  hunk_name_table <- sort(table(hunk_name), decreasing = TRUE)
  return(hunk_name_table)
}