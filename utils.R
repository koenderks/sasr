set.seed(120495)

options(width = 77)

library(jfa)
library(ggplot2)
library(downlit)
library(xml2)

options("mc.iterations" = 10000)

knitr::opts_chunk$set(
  collapse = TRUE,
  comment = "#>",
  cache = FALSE,
  fig.show = "hold",
  fig.align = "center",
  fig.width = 5,
  fig.height = 4,
  fig.caption = "yes",
  out.width = NULL
)
