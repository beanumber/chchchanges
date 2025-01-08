#' @title Get Authors of a Commit
#' @name authors_commit
#' @param file_name a file in the git repository
#' @author Debora Camacho
#' @returns a data frame with the total amount of commits per user
#' @import git2r
#' @export
#' @examples
#' \dontrun{
#' authors_commit(file_name = "README.md")
#' }

authors_commit <- function(file_name) {
  x <- git2r::blame(repo = getwd(), path = file_name)
  hunk_name <- x$hunks |> 
    purrr::map_chr(function(x) x[["orig_signature"]][["name"]])
  
  total <- length(hunk_name)
  sort(table(hunk_name), decreasing = TRUE)
}