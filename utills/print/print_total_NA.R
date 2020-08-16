print_total_NA <- function(arr, message=FALSE){
  
  msg <- paste0("`", deparse(substitute(arr)), "` has ", sum(is.na(arr)), " NA values.\n")
  
  if (message) { message(msg) } else { cat(msg) }
  
}