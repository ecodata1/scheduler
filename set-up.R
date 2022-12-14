
install.packages(c("taskscheduleR","rappdirs"),
  repos = "https://cloud.r-project.org"
)
library(taskscheduleR)
library(rappdirs)
dir <- user_cache_dir()
path <- paste0(dir, "/install-packages.R")
download.file(
  "https://raw.githubusercontent.com/ecodata1/scheduler/main/install-packages.R",
  path
)
source(path)
rscript <- paste0(dir, "/set-up.R")
taskscheduler_delete(taskname = taskname)
taskscheduler_create(
  taskname = taskname,
  rscript = rscript,
  schedule = schedule,
  starttime = starttime,
)
message("R packages install complete")
