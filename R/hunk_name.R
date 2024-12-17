#'@param hunk a list of the commit history from a specific file
#'@author Nicole Flores Sanchez
#'@examples
#'extract_name(hunk = "hunk_name.R")
#'@returns a list of the usernames will appear
#'@import git2r
#'@import tidyverse
#'@export
#'
extract_name <- function(hunk) {
  
  return(x$hunk$final_signature$name)
}

