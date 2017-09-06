get_random_files <- function(n) {
  #list.files lists all the files in the directory and sample selects n random enteries in it
  files = sample(list.files("outermost_directory_path", recursive = TRUE), n)
  #filter only those files which are required, here ending with mkv
  filepath = paste0("complete_directory_path_name", files[grepl("mkv$", files)])
  #copy the files to your desired directory
  file.copy(filepath, to = "your_directory_path")
}
