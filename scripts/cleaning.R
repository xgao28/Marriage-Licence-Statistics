#### Preamble ####
# Purpose: Cleans the raw plane data recorded by two observers..... [...UPDATE THIS...]
# Author: Xinxiang Gao
# Date: 19 September 2024
# Contact: xinxiang.gao@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Clean data ####
raw_data <- read_csv("../data/raw_data/raw_mls.csv")

cleaned_data <- raw_data %>% 
  janitor::clean_names() %>% 
  separate(col = time_period,
           into = c("year", "month"),
           sep = "-") %>% 
  mutate(date = lubridate::ymd(paste(year, month, "01", sep = "-")))

write_csv(cleaned_data, "../data/analysis_data/analysis_data.csv")
