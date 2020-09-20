print_unique <- function(vec, text = NULL, sep = " ", eol = "\n", message=FALSE, sort = TRUE, decreasing = FALSE, intro = TRUE){
  #' Print unique entries in vector
  
  if (is.null(text)){ text <- deparse(substitute(vec))  }
  
  if (intro){ intro <- paste0("Unique entries in ", text, ":")} else {intro <- NULL}
  
  if (sort){ unq <- sort(unique(vec), decreasing = decreasing) } else { unq <- unique(vec)}
  
  msg <- c(paste0(intro, sep = sep), eol, unq)
  
  if (message) { message(msg, "\n") } else { cat(msg, "\n") }
  
}