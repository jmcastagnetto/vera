# use a bash script to process the original file
# because it is easier to convert to UTF8, etc.
# using Unix/Linux CLI tools

oldwd <- getwd()
setwd(paste0(oldwd, "/data-raw"))
system("/bin/bash process-orig-vera.sh")
vera <- readr::read_fwf(
  "vera-utf8.txt",
  col_positions = fwf_widths(
    c(13, 300),
    col_names = c("acronym", "definition")
  )
)
setwd(oldwd)
usethis::use_data(vera, overwrite = TRUE)
