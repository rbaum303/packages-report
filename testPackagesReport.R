#' ---
#' output: github_document
#' ---

library(tidyverse)
packages <- as.data.frame(installed.packages())

## if you use dplyr, code like this will work:
apt <- packages %>%
  select(Package, Built)

## write this new, smaller data frame to data/add-on-packages.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path

## make a frequency table of package by the version in Built
## if you use dplyr, code like this will work:
apt_freqtable <- packages %>%
  count(Built) %>%
  mutate(prop = n / sum(n))

readr::write_csv(apt_freqtable, here::here())

## write this data frame to data/add-on-packages-freqtable.csv
## hint: readr::write_csv() or write.table()
## idea: try using here::here() to create the file path


## YES overwrite the files that are there now
## they are old output from me (Jenny)
## they are just examples
