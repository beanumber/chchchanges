#' Use an LLM to summarize git contributions
#' @param repo path to git repository
#' @param show_prompts Output the prompts as messages? Default is `FALSE`
#' @param user_prompt Additional text to add to the prompt
#' @param ... arguments passed to [ellmer::chat_gemini()]
#' @export
#' @examplesIf FALSE
#' llm_summarize_git(show_prompts = TRUE)
#' llm_summarize_git(show_prompts = TRUE, user_prompt = "Respond only in Spanish.")
#' 
#' 
llm_summarize_git <- function(repo = ".", show_prompts = FALSE, user_prompt = NULL, ...) {
  teacher_prompt = 
    "You are a friendly, supportive, college professor 
    evaluating student contributions to a git repository."
  
  chat <- ellmer::chat_gemini(system_prompt = teacher_prompt, ...)
  if (show_prompts) {
    message(paste("System prompt:", chat$get_system_prompt()))
  }
  
  prompt <- paste(
    "Analyze the following data from a git repository 
    and tell me who deserves what credit for 
    contributing to the project. 
    ",
    if (!is.null(user_prompt)) user_prompt,
    summarize_commits() |>
      jsonlite::toJSON()
  )
  
  if (show_prompts) {
    message(paste("Prompt:", prompt))
  } 
    
  chat$chat(prompt)
}

