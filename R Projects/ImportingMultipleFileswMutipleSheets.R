### Importing multiple .xlsx files with multiple sheets in R

library(tidyr)
library(purrr)
library(readxl)
library(dplyr)

list.files("13", full.names=TRUE)
read_excel("13", aaa.xls, sheet=1)
read_excel("13", aaa.xls, sheet=2)
read_excel("13", aaa.xls, sheet=3)

#######

x <- expand_grid(
  file=list.files("13", full.names=TRUE), 
  sheet=seq(3)) %>% 
  transmute(data=file %>% map2(
    sheet, ~ read_excel(path= .x, sheet= .y))) %>% 
  pull(data)

y <- do.call("rbind", x)

#######

x <- expand_grid(
  file=list.files("16", full.names=TRUE), sheet="DF_") %>% 
  transmute(data=file %>% map2(
    sheet, ~ read_excel(path=.x, sheet=.y, range="DR8:DZ39"))) %>% 
  pull(data)

y <- bind_rows(x)
colnames(y) <- c("Day", "DailyRawFlow", "DWF", "MaxFlow", "MinFlow", "AeratorFlow",
                 "SecondaryBypassFlow", "HighLevelFlow", "LowLevelFlow")
View(y)

