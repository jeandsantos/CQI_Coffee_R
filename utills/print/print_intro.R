print_intro <- function(intro, text = "", sep = " ", eol = "\n\n", message=FALSE){
  
  msg <- c(paste0(text, sep = sep), eol)
  
  if (message) { message(intro); message(msg) } else { cat(intro); cat(msg) }
  
}

