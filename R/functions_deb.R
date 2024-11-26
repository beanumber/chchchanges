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