source_scripts <- function(path, pattern = "*.R", include.dirs = TRUE, full.names = TRUE, verbose = TRUE){
  #' Sources all scripts in a directory based on a regex pattern
  
  for (dir in list.dirs(path)){
    for (file in list.files(dir, pattern=pattern, full.names = full.names, include.dirs = include.dirs)){
      source(file)
      if(verbose){ message(paste0("Imported: ", file)) }
    }
  }
}

