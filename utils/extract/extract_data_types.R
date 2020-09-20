extract_data_types <- function(df, simplify = TRUE){
  
  dtypes <- sapply(df, class, simplify = simplify)
  
  return(dtypes)
}