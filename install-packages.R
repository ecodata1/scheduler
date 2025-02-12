# Edit list of packages as required
# Install CRAN packages --------------------------------------------------------
install.packages(c(
  "devtools",
  "here",
  "cli",
  "tidyverse",
  "readxl",
  "openxlsx",
  "shiny",
  "shinyjs",
  "shinydashboard",
  "stringr",
  "mgcv",
  "knitr",
  "rmarkdown",
  "httr",
  "ows4R"
),
repos = "https://cloud.r-project.org"
)

# Install github packages ------------------------------------------------------
devtools::install_github("ecodata1/hera",
  dependencies = TRUE,
  upgrade = TRUE
)
devtools::install_github("ecodata1/sepaStats",
                         dependencies = TRUE,
                         upgrade = TRUE
)
devtools::install_github("ecodata1/spotfireSepaStats",
                         dependencies = TRUE,
                         upgrade = TRUE
)
# Params for taskscheduler_create() function -----------------------------------
# Create globals for set-up.R script
taskname <<- "install_r_packages"
schedule <<- "DAILY"
starttime <<- "23:00"
