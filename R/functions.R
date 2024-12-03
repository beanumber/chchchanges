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

commit_lines <- function(file_name, commit, line_number) {
  repo2 <- git2r::repository(path = file_name)
  diff_repo <- diff(x = repo2)
  return(diff_repo)
}

commit_lines <- function(file_name) {
  repo2 <- git2r::repository(getwd())
  commits <- git2r::commits(repo2) 
  lines <- lapply(commits, function(commit) commit$message$diff)
  return(commit_lines)
}

library(git2r)
commit_lines <- function(file_name, commit, line_number) {
  repo2 <- git2r::repository(path = file_name)
  diff_repo2 <- diff(x = repo2)
  return(diff_repo2)
}
commit_lines

library(git2r)
commit_lines <- function(file_name, commit) {
  repo2 <- git2r::repository(path = file_name)
  commit <- git2r::diff(
    parents(git2r::lookup(repo, commit))[[1]], 
    git2r::lookup(repo, commit)
  )[[file_name]]
  diff <- strsplit(as.character(changes),)
}
# Example
commit_lines("README.md", commit = "" )
# I want to know the commit log, like R randomizes the sha in commit so it kind of regenerates 
# line_number: random generate the code 
# Create a table where it can show the name assigned to the sha 


