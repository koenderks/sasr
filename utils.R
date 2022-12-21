options(width = 77)

library(jfa)
library(ggplot2)

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  cache = TRUE,
  fig.show = "hold",
  fig.align = "center",
  fig.width = 6,
  fig.height = 4,
  out.width = NULL
)

set.seed(120495)

status <- function(type) {
  status <- switch(type,
    polishing = "should be readable but is currently undergoing final polishing",
    restructuring = "is undergoing heavy restructuring and may be confusing or incomplete",
    drafting = "is currently a dumping ground for ideas, and we don't recommend reading it",
    complete = "is largely complete and just needs final proof reading",
    stop("Invalid `type`", call. = FALSE)
  )
  class <- switch(type,
    polishing = "note",
    restructuring = "important",
    drafting = "important",
    complete = "note"
  )
  cat(paste0(
    "\n",
    ":::: status\n",
    "::: callout-", class, " \n",
    "You are reading the work-in-progress first edition of Statistical Auditing with R. ",
    "This chapter ", status, ". ",
    ":::\n",
    "::::\n"
  ))
}
