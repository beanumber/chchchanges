#' Use an LLM to summarize git contributions
#' @param repo path to git repository
#' @param chat An [ellmer::Chat]
#' @param show_prompts Output the prompts as messages? Default is `FALSE`
#' @param user_prompt Additional text to add to the prompt
#' @param ... arguments passed to [ellmer::Chat]
#' @export
#' @examplesIf Sys.getenv("GOOGLE_API_KEY") > ""
#' summarize_git_with_llm(show_prompts = TRUE)
#' summarize_git_with_llm(show_prompts = TRUE, user_prompt = "Respond only in Spanish.")
#' 
#' 
summarize_git_with_llm <- function(repo = ".", chat = init_chat(), 
                              show_prompts = FALSE, user_prompt = NULL, ...) {
  if (!is_chat_ready(chat)) {
    stop("Chatbot is not ready.")
  }
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

#' @rdname summarize_git_with_llm
#' @export
#' @examplesIf Sys.getenv("GOOGLE_API_KEY") > ""
#' init_chat()
#' 
init_chat <- function(...) {
  teacher_prompt = 
    "You are a friendly, supportive, college professor 
    evaluating student contributions to a git repository."
  
  ellmer::chat_gemini(system_prompt = teacher_prompt, ...)
}

#' @rdname summarize_git_with_llm
#' @export
#' @examplesIf Sys.getenv("GOOGLE_API_KEY") > ""
#' chat <- init_chat()
#' is_chat_ready(chat)
#' 
is_chat_ready <- function(chat) {
  inherits(chat, "Chat") 
}
