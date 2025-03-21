#' Install a private directory to store chchchanges README
#' 
#' @param dir root directory of the git repository
#' @export
#' 
#' @examplesIf FALSE
#' install_readme()
#' 

install_readme <- function(dir = ".") {
  if (!git2r::in_repository(dir)) {
    stop("dir is not a git repository")
  }
  
  changes_dir <- fs::path(dir, ".chchchanges")
  fs::dir_create(changes_dir)
  
  fs::file_copy(
    system.file("README.Rmd", package = "chchchanges"), 
    changes_dir, 
    overwrite = TRUE
  )
  
  workflows_dir <- fs::path(dir, ".github", "workflows")
  fs::file_copy(
    system.file("git_analysis.yml", package = "chchchanges"), 
    workflows_dir,
    overwrite = TRUE
  )
  
  fs::dir_ls(changes_dir)
}