#'@param hunk #this is a hunk you. must do 
#'@param file_name
#'@export
#'
#'@import git2r
#'@import tidyverse
#'@import purrr
extract_name <- function(hunk) {
  return(hunk$final_signature$name)
}

#'@export
#'
hunks <-  function(file_name) { 
  x <- blame(path = file_name)
  hunks<-x$hunks 
  return(hunks)}






































#' @export
<<<<<<< HEAD
#' @examples
#' check_file(file_name = "Comments.qmd")
#Checks if file exist and is empty
check_file <- function (file_name) {
  
  if (file.exists(file_name)) {
    invisible()
  } else {
    return("This file does not exist")
  }
  
  if (file.info(file_name)$size == 0) {
    return("This is empty")
  } else {
    invisible() # No result will come out
  }
}


#' @export
#' @examples
#' authors_commit(file_name = "Comments.qmd")
#amount of commits per person in file 

authors_commit <- function(file_name) {
  
  x <- blame(path = file_name)
  hunk_name <- x$hunks |> map_chr(function(x)
    x[["orig_signature"]][["name"]])

  total <- length(hunk_name)
  hunk_name_table <- sort(table(hunk_name), decreasing = TRUE)
  return(hunk_name_table)
}
=======
#' @examples 
#' commit_lines("README.md")

library(git2r)

get_all_commit_shas <- function(repo_path = getwd()) {
  # Open the repository at the specified path (default: current working directory)
  repo <- repository(repo_path)
  
  # Get the list of all commits
  all_commits <- commits(repo)
  
  # Extract SHAs from all commits
  sha_list <- sapply(all_commits, function(commit) commit$sha)
  
  # Return the list of SHAs
  return(sha_list)
}
get_all_commit_shas()


>>>>>>> 16e6383d269885e8cfcc99b0861a832c2b257144

