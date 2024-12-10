#'@param file_name a file in the git repository
#'@author Nicole Flores Sanchez
#'@examples
#'hunks(file_name = "list_hunk.R")
#'@returns A list of hunks, the commit history
#'
#'@import git2r
#'@import tidyverse
#'@export
#'
hunks <-  function(file_name) { 
  x <- git2r::blame(path = file_name)
  hunks<-x$hunks 
  return(hunks)}