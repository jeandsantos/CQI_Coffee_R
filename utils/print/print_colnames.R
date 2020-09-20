print_colnames <- function(df, eol = "\n", message=FALSE){
  
  msg <- paste0(colnames(df), collapse = ", ")
  
  if (message) { message(deparse(substitute(df)),": ", eol, msg, "\n\n") } 
  
  else { cat(paste0(deparse(substitute(df)),": ", eol, msg, "\n\n")) }
  
}