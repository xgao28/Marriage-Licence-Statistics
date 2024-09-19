#### Preamble ####
# Purpose: Simulates the data with dates and draws from the Poisson distribution.
# Author: Xinxiang Gao
# Date: 19 September 2024
# Contact: xinxiang.gao@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
# [...ADD CODE HERE...]
num_of_dates <- 100
start_date <- 
end_date <- 


data <- tibble(
  dates = as.Date(
    runif(n = num_of_dates,
          min = as.numeric(start_date),
          max = as.numeric(end_date)
          ),
    origin = "1970-01-01"
  ),
  num_of_marriage = rpois(n = num_of_dates, lambda = 10)
)
write.csv(data, file = "../data/raw_data/sim_mls.csv")



