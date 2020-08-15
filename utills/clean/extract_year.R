extract_year <- function(text){
  
  clean_year <- text %>% 
    str_remove_all(pattern = "[:alpha:]") %>% # remove text
    stringr::str_replace_all(., pattern = "[:punct:]", replacement = " ") %>% # replace punctuation with space
    str_remove_all(pattern = "^[0-9]{1} ") %>% # remove single digits
    str_replace_all(pattern = " {2,}", replacement = " ") %>% # remove extra spaces
    str_extract_all(pattern = "20*[0-9]{2}", simplify = TRUE) %>% # extract 2- and 4-digit years
    .[,1] %>% # extract first entry
    as.numeric() # convert to numeric
  
  clean_year[clean_year < 100 & !is.na(clean_year)] <- clean_year[clean_year < 100 & !is.na(clean_year)] + 2000
  
  return(clean_year)
}
