library(tidyverse)
murders <- read.csv("data/murders.csv")
murders <- murders %>% mutate(region = factor(region), rate = total/ population * 10 ^5)
save(murders, file = "rda/murders.rda") #RDA = R Data, its recommended to use .rda suffix on files saving R objects which can be used for final analysis and plots
