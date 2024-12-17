#' @title Commit Changes 
#' @author Ananda Wilkinson
#' @description 
#' This function allows users to find commits for each group member in their project. It helps users identify each members contribution to the project, making it easier to determine who contributed the most, the least, or if they was an equal contribution. 
#' @param repo_path Provides the path to the repository, in this case it's our current working directory
#' @param all_commits Provides a list of all the commits made in the file 
#' @param sha_author_list Provides a list of all the authors in the project 
#' @param sha Represents the hash code for each commit made 
#' @param message Represents the description of the changes made by the author
#' @returns A summary table with the commit hashes (SHA and their corresponding authors and message. 
#' @examples 
#' get_all_commit_shas <- function(repo_path = getwd()) 
#' @export


get_all_commit_shas <- function(repo_path = getwd()) {
  # Open the repository at the specified path (default: current working directory)
  repo <- git2r::repository(repo_path)
  
  # Get the list of all commits
  all_commits <- git2r::commits(repo)
  
  sha_author_list <- lapply(all_commits, function(commit) {
    list(
      author = commit$author$name,
      sha = commit$sha,
      message = commit$message
    )
  })
  
  sha_author_df <- do.call(rbind, lapply(sha_author_list, as.data.frame))
  return(sha_author_df)
  
}

commits_table <- get_all_commit_shas()
library(knitr)
commits_table |>
  kable(format = "pipe", align = "l")
View (commits_table)

