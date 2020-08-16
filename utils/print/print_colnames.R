print_colnames <- function(df, message=FALSE){
  
  msg <- paste0(colnames(df), collapse = ", ")
  
  if (message) { message(deparse(substitute(df)),": ", msg, "\n") } 
  
  else { cat(deparse(substitute(df)),": ", msg, "\n") }
  
}