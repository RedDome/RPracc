# Load this csv file, 3 tasks, first task is to order gyumolcsok by price, then save the mean into a1. Second task is to rename the sargabarack's location to HOL, and then order the countries by alphabetical order, and save the ordered countries into d1. The third is save into d2, how many gyumolcs are there where the price is below 500. The last task it to make a boxplot for the fruit prices. Save the gyumolcs price median into d3

# Load necessary libraries
library(readr)
library(dplyr)
library(ggplot2)

# Load the CSV file
file_path <- "C:\Github\RPracc\ZH-A.csv"
gyumolcsok <- read_csv(file_path)

# Task 1: Order by price and save the mean price into a1
gyumolcsok_ordered <- gyumolcsok %>% arrange(price)
a1 <- mean(gyumolcsok$price)
print(a1)

# Task 2: Rename "sargabarack" location to "HOL", order countries alphabetically, and save into d1
gyumolcsok <- gyumolcsok %>% mutate(location = ifelse(gyumolcs == "sargabarack", "HOL", location))
ordered_countries <- gyumolcsok %>% arrange(location) %>% select(location)
d1 <- unique(ordered_countries$location)
print(d1)

# Task 3: Count gyumolcsok with price below 500 and save into d2
d2 <- nrow(gyumolcsok %>% filter(price < 500))
print(d2)

# Task 4: Boxplot for fruit prices and save the median price into d3
ggplot(gyumolcsok, aes(y = price)) +
  geom_boxplot() +
  labs(title = "Boxplot of Fruit Prices", y = "Price") +
  theme_minimal()

d3 <- median(gyumolcsok$price)
print(d3)
