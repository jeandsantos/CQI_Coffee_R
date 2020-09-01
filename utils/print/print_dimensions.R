print_dimensions <- function(df, message=FALSE){
  
  msg <- paste0(deparse(substitute(df)),": ", dim(df)[1], " rows, ", dim(df)[2], " columns")
  
  if (message) { message(msg) } else { cat(paste0(msg, "\n")) }
  
}