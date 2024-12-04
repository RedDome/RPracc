# Load this csv file, 3 tasks, first task is to order gyumolcsok by price, then save the mean into a1. Second task is to rename the sargabarack's location to HOL, and then order the countries by alphabetical order, and save the ordered countries into d1. The third is save into d2, how many gyumolcs are there where the price is below 500. The last task it to make a boxplot for the fruit prices. Save the gyumolcs price median into d3

file_path <- "E:/Github/RPracc/ZH-A.csv"
gyumolcsok <- read.csv(file_path)

# Task 1: Order by price and save the mean price into a1
gyumolcsok_ordered <- gyumolcsok[order(gyumolcsok$Ar),]
a1 <- mean(gyumolcsok$Ar)
print(a1)

# Task 2: Rename "sargabarack" location to "HOL", order countries alphabetically, and save into d1
gyumolcsok$location[gyumolcsok$gyumolcs == "sargabarack"] <- "HOL"
ordered_countries <- gyumolcsok[order(gyumolcsok$Orszag),]
d1 <- unique(ordered_countries$Orszag)
print(d1)

# Task 3: Count gyumolcsok with price below 500 and save into d2
d2 <- sum(gyumolcsok$Ar < 500)
print(d2)

# Task 4: Boxplot for fruit prices and save the median price into d3
boxplot(gyumolcsok$Ar, main="Boxplot of Fruit Prices", ylab="Ar")
d3 <- median(gyumolcsok$Ar)
print(d3)
