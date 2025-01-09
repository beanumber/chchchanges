#' Use an LLM to summarize git contributions
#' @param repo path to git repository
#' @param ... currently ignored
#' @export
#' @examplesIf FALSE
#' llm_summarize_git()
#' 
#' 
llm_summarize_git <- function(repo = ".", ...) {
  chat <- ellmer::chat_gemini(
    system_prompt = "You are a friendly, supportive, college professor 
    evaluating student contributions to a git repository."
  )
  
  paste(
    "Analyze the following data from a git repository and tell me who deserves 
    what credit for contributing to the project? ",
    summarize_commits() |>
      jsonlite::toJSON()
  ) |>
    chat$chat()
}

