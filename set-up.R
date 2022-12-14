
install.packages("taskscheduleR")
library(taskscheduleR)
download.file("https://raw.githubusercontent.com/ecodata1/scheduler/main/install-packages.R",
              "install-packages.R")
source("install-packages.R")

taskscheduler_create(taskname = taskname,
                     rscript = rscript,
                     schedule = schedule,
                     starttime = starttime)