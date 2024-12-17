#'@title Extracting Hunk Names
#'@name extract_name
#'@param hunk a list of the commit history from a specific file
#'@author Nicole Flores Sanchez
#'@examples
#'extract_name(hunk = "hunk_name.R")
#'@returns a list of the usernames will appear
#'@import git2r
#'@import tidyverse
#'@importFrom git2r blame
#'@export
#'
extract_name <- function(file_name) {
  # makes sure its not null, is just one path, not missing and it exists
  if (is.null(file_name) || length(file_name) != 1 || is.na(file_name) || !file.exists(file_name)) {
    stop("Not a valid file path: file_name must be a valid path to an existing file.")
  }
  
  # Here we use the git2r::blame to get file's blame information
  blame_info <- git2r::blame(path = file_name)
  
  # Hunk name extaction
  name_list <- blame_info$hunks |> 
    purrr::map_chr(function(hunk) hunk[["orig_signature"]][["name"]])
  
  # Remove duplicates
  final_name_list <- unique(name_list)
  
  return(final_name_list)
}



