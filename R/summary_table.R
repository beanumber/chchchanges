#'@param repo_path=getwd() retrieves the current working directory
#'#'@param file_name a file in the git repository
#'@author Debora Camacho, Nicole Flores Sanchez, Ananda Wilkinson
#' @examples
#' create_summary_table(file_name = "summary_table.R")
#' @returns a list of commit ids associated with each user
#' @import git2r
#' @import tidyverse
#' @export
#' 
create_summary_table <- function(file_name, repo_path = getwd()) {
  
  #Checking the file
  file_check <- check_file (file_name)
   if (!is.null(file_check)) {
     stop(file_check)
   }
  
  hunk_data <- hunks(file_name)
  
  author_commit_info <- authors_commit(file_name)
  
  commit_shas <- get_all_commit_shas(repo_path)
  
  summary_table <- tibble(
    Author = names(author_commit_info),
    Commit_Count = as.integer(author_commit_info),
    Total_Hunks = length(hunk_data),
    All_Commits_SHA = paste(commit_shas, collapse = ", ")
  )
  
  return(summary_table)
}
