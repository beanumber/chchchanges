#'@title Check File Existence
#'@name check_file
#'@param file_name a file in the git repository
#'@author Debora Camacho
#'@examples
#' check_file(file_name = "check.R")
#'@returns A character phrase if the file does not exist and if empty
#'
#'@import git2r
#'@export 
#'

check_file <- function (file_name) {
  
  if (file.exists(file_name)) {
    return(invisible())
  } else {
    return("This file does not exist")
  }
  
  if (file.info(file_name)$size == 0) {
    return("This is empty")
  } else {
    return(invisible()) 
  }
}