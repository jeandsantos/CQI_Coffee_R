print_colnames <- function(df, message=FALSE){
  
  msg <- paste0(colnames(df), collapse = ", ")
  
  if (message) { message(deparse(substitute(df)),": ", msg, "\n") } 
  
  else { cat(paste0(deparse(substitute(df)),": ", msg, "\n")) }
  
}