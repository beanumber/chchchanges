#' @title Table Summary
#' @name Summary_table
#' @param repo_path=getwd() retrieves the current working directory
#' @param file_name a file in the git repository
#' @author Debora Camacho, Nicole Sanchez Flores, Ananda Wilkinson
#' @examples
#' create_summary_table(file_name = "README.md")
#' @returns a list of commit ids associated with each user
#' @import git2r
#' @export
#' 
create_summary_table <- function(file_name, repo_path = getwd()) {
  
  #Checking the file
   if (!file.exists(file_name)) {
     stop("Could not find file")
   }
  
  hunk_data <- hunks(file_name)
  
  author_commit_info <- authors_commit(file_name)
  
  commit_shas <- get_all_commit_shas(repo_path)
  
  tibble::tibble(
    author = names(author_commit_info),
    commit_count = as.integer(author_commit_info),
    total_hunks = length(hunk_data),
    all_commits_SHA = paste(commit_shas, collapse = ", ")
  )
}

