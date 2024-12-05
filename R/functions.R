#'@param hunk #this is a hunk you. must do 
#'@param file_name
#'@export
#'
extract_name <- function(hunk) {
  return(hunk$final_signature$name)
}

#' @export
#' @examples
#' authors_commit(file_name = "Comments.qmd")
#amount of commits per person in file 
authors_commit <- function(file_name) {
  x <- blame(path = file_name)
  hunk_name <- x$hunks |> map_chr(function(x) 
    x[["org_signature"]][["name"]])
  total <- length(hunk_name)
  hunk_name_table <- sort(table(hunk_name), decreasing = TRUE)
  return(hunk_name_table)
}

hunks <-  function(file_name) { 
  x <- blame(path = file_name)
  hunks<-x$hunks 
  return(hunks)}

# Find the specific lines were the commits were made
#' @description 
#' A function that produces specific lines where commits were made 
#' @param repo2 represents the location of the file and takes a value that tells the files 
#' @param commit represents the changes made to github and who made it 
#' @param diff presents the changes made in the code into character 
#' @export
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



