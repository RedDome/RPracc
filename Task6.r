# Write a function, which looks in a vector, and determines, if 10 numbers are after each other

has_consecutive_ten <- function(vec) {
  n <- length(vec)
  
  if (n < 10) {
    return(FALSE)
  }
  
  for (i in 1:(n - 9)) {
    # Check if the next 9 numbers are consecutive
    if (all(diff(vec[i:(i + 9)]) == 1)) {
      return(TRUE)
    }
  }
  
  return(FALSE)
}

vector1 <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12)
vector2 <- c(1, 2, 3, 4, 5, 6, 8, 9, 10, 11, 12, 13)
vector3 <- c(1, 3, 5, 7, 9, 11, 13, 15, 17, 19)

result1 <- has_consecutive_ten(vector1)
result2 <- has_consecutive_ten(vector2)
result3 <- has_consecutive_ten(vector3)

result1  # Should return TRUE
result2  # Should return FALSE
result3  # Should return FALSE
