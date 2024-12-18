#' @title Extracting Hunk Names
#' @name extract_name
#' @param file_name A string containing the path to a file tracked in a Git repository.
#' @author Nicole Flores Sanchez
#' @examples
#' extract_name(file_name = "hunk_name.R")
#' @return A character vector of unique usernames from the file's commit history.
#' @import git2r
#' @import tidyverse
#' @importFrom git2r blame
#' @export
#'
extract_name <- function(file_name) {
  # makes sure it's not null, is just one path, not missing, and it exists
  if (is.null(file_name) || length(file_name) != 1 || is.na(file_name) || !file.exists(file_name)) {
    stop("Not a valid file path: file_name must be a valid path to an existing file.")
  }
  
  # Get the directory of the file
  repo_path <- dirname(file_name)
  
  # Check if the directory is inside a valid Git repository
  if (!git2r::in_repository(repo_path)) {
    stop("The file is not inside a valid Git repository. Please check the file path and repository.")
  }
  
  # Use git2r::blame to get the file's blame information
  blame_info <- tryCatch(
    git2r::blame(path = file_name),
    error = function(e) stop("Failed to retrieve blame information: ", e$message)
  )
  
  # Hunk name extraction
  name_list <- blame_info$hunks |> 
    purrr::map_chr(function(hunk) hunk[["orig_signature"]][["name"]])
  
  # Remove duplicates
  final_name_list <- unique(name_list)
  
  return(final_name_list)
}
