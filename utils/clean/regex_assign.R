regex_assign <- function(txt, regex_vec, exclude_na = TRUE, verbose = FALSE){
  
  # Create blank vector for new assignments
  new_txt <- rep(NA, length(txt))
  
  if(exclude_na){ na_bool <- !is.na(txt) } else ( na_bool <- FALSE)
  
  for (i in 1:length(regex_vec)){
    
    assign <- names(regex_vec[i])
    rgx <- regex_vec[i]
    
    new_txt[stringr::str_detect(txt, rgx) & na_bool] <- assign
    
    if(verbose){ cat( paste0(sum(stringr::str_detect(txt, rgx) & na_bool), " entries were assigned to '", assign, "' using the regex '", rgx,"'\n") ) }
    
  }
  
  if(verbose){ print_total_NA(new_txt) }
  
  return(new_txt)
  
}