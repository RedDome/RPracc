# Create a 10x10 matrix, where the last row's every item is 1, and second columns every item is 3, and the rest of the items are 2
matrixTask2 <- matrix(2, nrow = 10, ncol = 10)
matrixTask2[10, ] <- 1
matrixTask2[, 2] <- 3
matrixTask2