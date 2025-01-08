#' @title Commit Changes 
#' @author Ananda Wilkinson
#' @description 
#' This function allows users to find commits for each group member in their project. It helps users identify each members contribution to the project, making it easier to determine who contributed the most, the least, or if they was an equal contribution. 
#' @param ... arguments passed to [git2r::repository()]
#' @returns A summary table with the commit hashes (SHA and their corresponding authors and message. 
#' @examples 
#' \dontrun{
#' get_all_commit_shas()
#' }
#' @export


get_all_commit_shas <- function(...) {
  # Open repository
  repo <- git2r::repository(...)
  
  # Get the list of all commits
  all_commits <- git2r::commits(repo)
  
  # Put in a data frame
  sha_author_list <- lapply(all_commits, function(commit) {
    list(
      author = commit$author$name,
      sha = commit$sha,
      message = commit$message
    )
  })
  
  # Combine the list into a single data frame, Nicole: Made it explicitly into a data frame
  sha_author_df <- as.data.frame(do.call(rbind, sha_author_list))
  
  # Nicole: I think we should make this a class b/c test says it's not an S3 object
  class(sha_author_df) <- c("commits_table", class(sha_author_df))
  
  #Nicole: Made a message
  message("To view the commit table interactively, use View(commits_table).")
  return(sha_author_df)
}

