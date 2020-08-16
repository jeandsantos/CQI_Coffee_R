clean_text_unp <- function(text, text_case = "upper", 
                       rm_accents = TRUE, accents_to = "Latin-ASCII", 
                       rm_redundant = TRUE, redundant_regex = "test|TEST|n\\/a|N\\/A", 
                       rm_punct = TRUE, punct_regex = "\\||\\.|-|\\;|\\:|\\(|\\)",
                       sub_w_space = TRUE, sub_w_space_regex = ",|/",
                       replace_NA = TRUE, NA_regex = "",
                       rm_numbers = TRUE, sub_double_space = TRUE){
  
  clean_text <- stringr::str_to_lower(text)
  
  if (rm_accents) {clean_text <- stringi::stri_trans_general(clean_text, accents_to)}
  if (rm_redundant) {clean_text <- stringr::str_remove_all(clean_text, redundant_regex)}
  if (rm_punct) {clean_text <- stringr::str_remove_all(clean_text, punct_regex)}
  if (sub_w_space) {clean_text <- stringr::str_replace_all(clean_text, sub_w_space_regex, " ")}
  if (rm_numbers) {clean_text <- stringr::str_remove_all(clean_text, "[0-9]")}
  if (sub_double_space) {clean_text <- stringr::str_replace_all(clean_text, " {2,}", " ")}
  if (replace_NA) {clean_text <- stringr::str_replace_na(clean_text, NA_regex)}
  
  clean_text <- clean_text %>% stringr::str_remove_all(" $|^ ") %>% stringi::stri_trans_general(id = text_case)
  
  return(clean_text)
  
}