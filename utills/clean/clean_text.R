clean_text <- function(text, text_case = "upper", 
                       rm_accents = TRUE, accents_to = "Latin-ASCII", 
                       rm_redundant = TRUE, redundant_regex = "test|TEST|n\\/a|N\\/A", 
                       rm_punct = TRUE, punct_regex = "\\||\\.|-|\\;|\\:|\\(|\\)",
                       sub_w_space = TRUE, sub_w_space_regex = ",|/",
                       replace_NA = TRUE, NA_regex = "",
                       rm_numbers = TRUE, sub_double_space = TRUE){
  
  clean_text <- text %>% 
    stringr::str_to_lower() %>% 
    { if(rm_accents) stringi::stri_trans_general(., accents_to) else .} %>% 
    { if(rm_redundant) stringr::str_remove_all(., redundant_regex) else .} %>% 
    { if(rm_punct) stringr::str_remove_all(., punct_regex) else .} %>% 
    { if(sub_w_space) stringr::str_replace_all(., sub_w_space_regex, " ") else .} %>% 
    { if(rm_numbers) stringr::str_remove_all(., "[0-9]") else .} %>% 
    { if(sub_double_space) stringr::str_replace_all(., " {2,}", " ") else .} %>% 
    { if(replace_NA) stringr::str_replace_na(., replacement = NA_regex) else .} %>% 
    stringr::str_remove_all(., " $|^ ") %>% 
    stringi::stri_trans_general(., id = text_case)
  
  return(clean_text)
  
}