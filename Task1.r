# Create vector with numbers 1,4,8,13,19,21,42,71
a1 <- c(1,4,8,13,19,21,42,71)
a1

# Create vector with numbers from 1-600, which can be divided by 5
a2 <- seq(5, 600, by = 5)
a2

# Mean of a2, and gets the lowest item, which is higher than 150
meanOfA2 <- mean(a2)
meanOfA2

a2FirstHigherThan150 <- a2[which(a2 > 150)[1]]
a2FirstHigherThan150