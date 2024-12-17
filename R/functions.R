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
  x <- git2r::blame(path = file_name)
  hunks<-x$hunks 
  return(hunks)}

#' @export
#' 
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
#' 
#' @examples
#' authors_commit(file_name = "Comments.qmd")
#amount of commits per person in file 

authors_commit <- function(file_name) {
  
  x <- git2r::blame(path = file_name)
  hunk_name <- x$hunks |> map_chr(function(x)
    x[["orig_signature"]][["name"]])

  #total <- length(hunk_name)
  hunk_name_table <- sort(table(hunk_name), decreasing = TRUE)
  return(hunk_name_table)

}

#' @export
#' 
#' @examples 
#' get_all_commit_shas("README.md")
get_all_commit_shas <- function(repo_path = getwd()) {
  # Open the repository at the specified path (default: current working directory)
  repo <- git2r::repository(repo_path)
  
  # Get the list of all commits
  all_commits <- git2r::commits(repo)
  
  # Extract SHAs from all commits
  sha_list <- sapply(all_commits, function(commit) commit$sha)
  
  # Return the list of SHAs
  return(sha_list)
}
get_all_commit_shas()



create_summary_table <- function(file_name, repo_path = getwd()) {
  
  #Checking the file
  file_check <- check_file (file_name)
  # if (!is.null(file_check)) {
  #   stop(file_check)
  # }
  
  #Names from hunks
  hunk_data <- hunks(file_name)
  
  #Authors info
  author_commit_info <- authors_commit(file_name)
  
  #commit lines
  commit_shas <- get_all_commit_shas(repo_path)
  
  #table
  summary_table <- tibble(
    Author = names(author_commit_info),
    Commit_Count = as.integer(author_commit_info),
    Total_Hunks = length(hunk_data),
    All_Commits_SHA = paste(commit_shas, collapse = ", ")
  )
  
  # Return the summary table
  return(summary_table)
}


merge_commit <- function(file_name) {
  
  x <- git2r::blame(path = file_name)
  hunk_merge <- x$hunks |> map_chr(function(x)
    x[["repo"]][["path"]])
  
  hunk_merge_table <- sort(table(hunk_merge), decreasing = TRUE)
  
  return(hunk_merge_table)
  
}
