
install.packages("taskscheduleR")
library(taskscheduleR)
download.file("http://www.ecodata1.github.com/scheduler/install-packages.R",
              "install-packages.R")
source("install-packages.R")

taskscheduler_create(taskname = taskname,
                     rscript = rscript,
                     schedule = schedule,
                     starttime = starttime)
