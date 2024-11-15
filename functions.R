#'@param hunk #this is a hunk you. must do 
#'@export
#'
extract_name <- function(hunk) {
  return(hunk$final_signature$name)
}
