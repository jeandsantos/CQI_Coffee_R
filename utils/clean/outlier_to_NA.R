outlier_to_NA <- function(x, min_threshold = 0, max_threshold = Inf){
  
  x[(x > max_threshold) & (x < min_threshold) & (!is.na(x))] <- NA
  
  return(x)
  
}
