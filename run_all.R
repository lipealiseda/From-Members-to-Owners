# Runs every stage of the project in order.
#
#   Rscript run_all.R            everything
#   Rscript run_all.R --list     show the stages
#   Rscript run_all.R panel      run one stage by name
#
# Each stage is one or more scripts in R/. Stages get filled in as the
# project moves through its phases.

stages <- list(
  setup = list(
    about = "Install packages with renv (Phase 1)",
    scripts = c("00_setup.R")
  )
  # Phase 3, data collection     club list, results, squad values, financials
  # Phase 4, panel               one tidy club by season table
  # Phase 5, brazil              before and after, difference in differences
  # Phase 6, owners              owner type comparison
  # Phase 7, global              Spain, Chile, Portugal, Italy on field side
)

args <- commandArgs(trailingOnly = TRUE)

if ("--list" %in% args) {
  for (name in names(stages)) cat(sprintf("%-10s %s\n", name, stages[[name]]$about))
  quit(save = "no")
}

to_run <- if (length(args) == 0) names(stages) else args
unknown <- setdiff(to_run, names(stages))
if (length(unknown) > 0) stop("Unknown stage ", paste(unknown, collapse = ", "))

for (name in to_run) {
  message("\n== ", name, " == ", stages[[name]]$about)
  for (script in stages[[name]]$scripts) {
    start <- Sys.time()
    status <- system2("Rscript", file.path("R", script))
    if (status != 0) stop("Stage ", name, " failed in ", script)
    message(sprintf("   %s took %.1f s", script, as.numeric(Sys.time() - start, units = "secs")))
  }
}
