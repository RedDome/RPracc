# Create a list called ZH, 
# in the first Cell, 
# the names are Andras, Bela, Peti, Lila, Sanyi, Kata, Anna, Janka, Gyula, Gabor, Hanna. 
# The second cell contains 20 random numbers between 1 and 5. 
# The third cell is 40 number starting from 1758 and it goes down. 
# The fourth cell is 10 true or false value.
firstCell <- c("Andras", "Bela", "Peti", "Lila", "Sanyi", "Kata", "Anna", "Janka", "Gyula", "Gabor", "Hanna")

set.seed(123)
secondCell <- sample(1:5, 20, replace = TRUE)

thirdCell <- 1758:(1758 - 39)

fourthCell <- sample(c(TRUE, FALSE), 10, replace = TRUE)

ZH <- list(firstCell, secondCell, thirdCell, fourthCell)