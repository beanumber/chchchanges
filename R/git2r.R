globalVariables(c("who", "lines", "num_lines", "when", "days", "commits_per_week"))

#' Summarize the commit history
#' @export
#' @param ... arguments passed to [git2r::commits()]
#' @examplesIf git2r::in_repository()
#' tbl_commits()
#' 

tbl_commits <- function(...) {
  git2r::commits(...) |>
    purrr::map(commit_summary) |>
    purrr::list_rbind()
}

commit_summary <- function(gc, ...) {
  tibble::tibble(
    what = gc$sha,
    who = gc$author$name,
    when = git2r::when(gc),
    why = gc$message
  )
}

#' Summarize the blame for a file
#' @param ... arguments passed to [git2r::blame()]
#' @author Debora Camacho
#' @returns a [tibble::tibble] with the total amount of commits per user
#' @export
#' @examplesIf git2r::in_repository()
#' \dontrun{
#' tbl_blame(path = "README.md")
#' }

tbl_blame <- function(...) {
  x <- git2r::blame(...)
  x$hunks |> 
    purrr::map(summary) |>
    purrr::list_rbind()
}

#' @export

summary.git_blame_hunk <- function(object, ...) {
  tibble::tribble(
    ~who, ~when, ~how, ~lines,
    object$final_signature$name, git2r::when(object$final_signature$when), object$final_commit_id, object$lines_in_hunk
  )
}
