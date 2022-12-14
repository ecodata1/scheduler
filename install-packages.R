# Edit list of packages as required
# Install CRAN packages --------------------------------------------------------
install.packages(c("devtools",
                   "here",
                   "tidyverse",
                   "readxl",
                   "openxlsx",
                   "shiny",
                   "shinyjs",
                   "shinydashboard",
                   "stringr",
                   "mgcv",
                   "knitr",
                   "rmarkdown"), repos = "https://cloud.r-project.org")

# Install github packages ------------------------------------------------------
library("devtools")
devtools::install_github("ecodata1/darleq3",
                         ref = "description",
                         dependencies = TRUE,
                         upgrade = TRUE)
devtools::install_github("ecodata1/hera",
                         dependencies = TRUE,
                         upgrade = TRUE)

# Params for taskscheduler_create() function -----------------------------------
# Create globals for set-up.R script
taskname <<- "install_r_packages"
rscript <<- paste0(here(), "/install-packages.R")
schedule <<- "DAILY"
starttime <<- "23:00"


