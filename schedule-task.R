
# Windows only machines - Task Scheduler for R package install/update
install.packages("rappdirs",
  repos = "https://cloud.r-project.org"
)
library(rappdirs)
dir <- user_cache_dir()
path <- paste0(dir, "/set-up.R")
download.file(
  "https://raw.githubusercontent.com/ecodata1/scheduler/main/set-up.R",
  path
)

source("set-up.R")
