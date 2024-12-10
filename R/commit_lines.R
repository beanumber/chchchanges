#'@param repo_path retrieves the current working directory
#'@author Ananda Wilkinson
#' @examples
#' get_all_commit_shas(repo_path = "commit_lines.R")
#' @returns a list of commit ids associated with each user
#' @import git2r
#' @import tidyverse
#' @export
#' 

get_all_commit_shas <- function(repo_path = getwd()) {
  # Open the repository at the specified path (default: current working directory)
  repo <- git2r::repository(repo_path)
  
  # Get the list of all commits
  all_commits <- git2r::commits(repo)
  
  sha_author_list <- lapply(all_commits, function(commit) {
    list(
      author = commit$author$name,
      sha = commit$sha
    )
  })
  
  sha_author_df <- do.call(rbind, lapply(sha_author_list, as.data.frame))
  
  return(sha_author_df)
  
}
