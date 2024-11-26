#' Makes a summary table of the user, the number of commits each user made, and their "hunks
#' @param file_name This will be a string, this is the name of the file you want to see commit changes
#' @param users These are the users you may have from commit changes
#' @param num_c These are the number of commits
#' @param hunk  This is the hunk of where they might have committed

#' @import git2r
#' @import tidyverse
#' @export
summary_table_changes <- function(file_name) {
  x <- blame(path = file_name, boundary = FALSE)

  x <- blame(path = "file_name")
  hunks<-x$hunks 
  Users <- lapply(hunks,extract_name)
  
  Data.frame <- data.frame(Users = c(Users))
  # we have to make a list?
  
  
  # sapply applies the function and makes it into a vector or an array, this is good bc
  # str(x) |> # make it into a string,
  # data.frame(users, commits, hunk) # now we are trying to make it into a data frame with z
  #
  # # basically i want the path, and then i want it to be separated into how many times it commits?
  # i don't really know how to do this, but maybe how many times the user appeared. first we have to make a data frame tho
  # as.data.frame 
  
  print(Data.frame)
  #for a specific file
}


  
#commits ---- hunks (changes of each person)

