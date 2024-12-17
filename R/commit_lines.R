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
  library(git2r)
  library(knitr)
  # Open repo 
  repo <- git2r::repository(repo_path)
  # Get the list of all commits
  all_commits <- git2r::commits(repo)
  # Put in a data frame
  sha_author_list <- lapply(all_commits, function(commit) {
    list(
      author = commit$author$name,
      sha = commit$sha,
      message = commit$message)
    })
  # Combine the list into a single data frame
  sha_author_df <- do.call(rbind, sha_author_list)
  return(sha_author_df)
}

library(knitr)
commits_table <- get_all_commit_shas()
kable(commits_table, format = "simple", align = "l", col.names = c("Author", "SHA", "Message"))

View(commits_table)