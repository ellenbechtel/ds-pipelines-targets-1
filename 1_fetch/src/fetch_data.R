## Fetch data

fetch_data <- function(project_output_dir, sb_item, sb_file, out_file) {
  
  #create output director, if it doesn't exist
  if(!dir.exists(project_output_dir)){
    dir.create(project_output_dir)
  } 

  #create file name  
  local_sb_file <- file.path(project_output_dir, out_file)
  sbtools::item_file_download(sb_item, names = sb_file, destinations = local_sb_file, overwrite_file = TRUE)
}