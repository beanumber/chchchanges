#'@param hunk #this is a hunk you. must do 
#'@param file_name
#'@export
#'
extract_name <- function(hunk) {
  return(hunk$final_signature$name)
}

#amount of commits per person in the repo
authors_commit <- function(file_name) {
    author <- sapply(git2r::commits(file_name), function(commit) commit$author$name)
    commit_summary <- sort(table(author), decreasing = TRUE)
  return(commit_summary)
}

#total amount of commits in the repo
commits_amt <- function(file_name) {
  repo <- git2r::repository(path = file_name ) 
  num_c <- length(git2r::commits(repo))
  paste("The amount of commits so far is: ", num_c)
}

hunks <-  function(file_name) { 
  x <- blame(path = file_name)
  hunks<-x$hunks 
  return(hunks)}