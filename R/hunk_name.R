#'@param hunk a list of the commit history from a specific file
#'@author Nicole Flores Sanchez
#'@examples
#'extract_name(hunk = "hunk_name.R")
#'@returns a list of the usernames will appear
#'@import git2r
#'@import tidyverse
#'@export
#'
extract_name <- function(file_name) {
  x <- git2r::blame(path = file_name)
  name_list <- x$hunks |> purrr::map_chr(function(x)
    x[["orig_signature"]][["name"]])
  
  final_name_list <- unique(name_list)
  
  return(final_name_list)
  
  }


