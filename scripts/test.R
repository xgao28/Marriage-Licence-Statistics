#### Preamble ####
# Purpose: Tests... [...UPDATE THIS...]
# Author: Xinxiang Gao
# Date: 19 September 2024
# Contact: xinxiang.gao@mail.utoronto.ca
# License: MIT


#### Workspace setup ####
library(tidyverse)
# [...UPDATE THIS...]

#### Test data ####
data <- read_csv("../data/raw_data/sim_mls.csv")

# Test for negative numbers
data$num_of_marriage |> min() <= 0

# Test for NAs
all(is.na(data$num_of_marriage))

