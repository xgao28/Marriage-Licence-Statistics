#### Preamble ####
# Purpose: Simulates the data with dates and draws from the Poisson distribution.
# Author: Xinxiang Gao
# Date: 19 September 2024
# Contact: xinxiang.gao@mail.utoronto.ca
# License: MIT

#### Workspace setup ####
library(tidyverse)

#### Simulate data ####
num_of_dates <- 100
set.seed(304)

# Define the start and end date
start_date <- as.Date("2018-01-01")
end_date <- as.Date("2023-12-31")


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



