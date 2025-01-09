#' Summarize various git artifacts
#' @rdname tbl_commits
#' @author Debora Camacho, Nicole Sanchez Flores, Ananda Wilkinson
#' @returns a [tibble::tibble] with aggregated commit statistics for each user
#' @export
#' @examplesIf git2r::in_repository()
#' \dontrun{
#' summarize_commits()
#' }
#' 
summarize_commits <- function(...) {
  tbl_commits(...) |>
    dplyr::filter(who != "noreply@github.com") |>
    dplyr::group_by(who) |>
    dplyr::summarize(
      num_commits = dplyr::n(),
      first_commit = min(when),
      last_commit = max(when),
      days = lubridate::interval(min(when), max(when)) / lubridate::ddays(1),
      commits_per_week = dplyr::n() * 7 / days
    ) |>
    dplyr::arrange(dplyr::desc(commits_per_week))
}

#' @rdname tbl_blame
#' @export
#' @examplesIf git2r::in_repository()
#' \dontrun{
#' summarize_blame(path = "README.md")
#' }

summarize_blame <- function(...) {
  tbl_blame(...) |>
    dplyr::group_by(who) |>
    dplyr::summarize(
      num_hunks = dplyr::n(),
      num_lines = sum(lines)
    ) |>
    dplyr::arrange(dplyr::desc(num_lines))
}