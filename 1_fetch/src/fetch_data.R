## Fetch data

fetch_data <- function(project_output_dir <- '1_fetch/out') {
  
  #create output director, if it doesn't exist
  if(!dir.exists(project_output_dir)){
    dir.create(project_output_dir)
  } 

  #create file name  
  mendota_file <- file.path(project_output_dir, 'model_RMSEs.csv')
  sbtools::item_file_download('5d925066e4b0c4f70d0d0599', names = 'me_RMSE.csv', destinations = mendota_file, overwrite_file = TRUE)
}