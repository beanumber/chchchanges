#' @title Getting Hunks from a File
#' @name hunks
#' @param file_name a file in the git repository
#' @author Nicole Sanchez Flores
#' @examples
#' hunks(file_name = "README.md")
#' @returns A list of hunks, the commit history
#' 
#' @import git2r
#' @import tidyverse
#' @export
#'
hunks <-  function(file_name) { 
  x <- git2r::blame(path = file_name)
  hunks<-x$hunks 
  return(hunks)}