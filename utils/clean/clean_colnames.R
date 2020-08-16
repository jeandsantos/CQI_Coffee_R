clean_colnames <- function(df, regex = " / | |\\.", replace_with = "_", upper=TRUE){
  
  tmp <- colnames(df) %>% stringr::str_replace_all(regex, replace_with)
  
  if (upper) { tmp <- tmp %>% stringr::str_to_upper() 
  
  } else { tmp <- tmp %>% stringr::str_to_lower() }
  
  return(stats::setNames(df, tmp))
  
}