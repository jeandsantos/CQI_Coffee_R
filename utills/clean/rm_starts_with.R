rm_starts_with <- function(df, str = c("X", "NA")){
  
  return( df %>% dplyr::select(-starts_with(str)) )
  
}
