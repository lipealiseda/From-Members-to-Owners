# Run this once on a new computer, from the project folder.
#
#   Rscript R/00_setup.R
#
# It sets up renv, which gives this project its own private package library
# and writes the exact package versions to renv.lock. Anyone who clones the
# repo later runs renv::restore() and gets the same versions we used.

if (!requireNamespace("renv", quietly = TRUE)) {
  install.packages("renv", repos = "https://cloud.r-project.org")
}

# If renv.lock already exists, someone set the project up before us.
# Then we only need to install the recorded versions.
if (file.exists("renv.lock")) {
  renv::restore(prompt = FALSE)
  quit(save = "no")
}

# First time setup. bare = TRUE starts with an empty library.
renv::init(bare = TRUE, restart = FALSE)

packages <- c(
  # data work and charts
  "tidyverse",   # dplyr, tidyr, readr, ggplot2, stringr, purrr
  "janitor",     # cleans messy column names
  "scales",      # nicer axis labels on charts
  "glue",        # pastes text and values together
  "here",        # finds files relative to the project folder

  # data collection
  "JaseZiv/worldfootballR",  # Transfermarkt and FBref, installed from GitHub
  "pdftools",                # reads text out of club financial statement PDFs

  # models
  "fixest",      # fast fixed effects and difference in differences

  # notebooks and checks
  "quarto",
  "testthat"
)

renv::install(packages, prompt = FALSE)
renv::snapshot(type = "all", prompt = FALSE)

message("Done. Package versions are saved in renv.lock")
