# Write a function, which gives from a array, which items are prime numbers

is_prime <- function(n) {
  if (n <= 1) {
    return(FALSE)
  }
  for (i in 2:sqrt(n)) {
    if (n %% i == 0) {
      return(FALSE)
    }
  }
  return(TRUE)
}

find_primes <- function(arr) {
  primes <- arr[sapply(arr, is_prime)]
  return(primes)
}

array <- c(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20)
prime_numbers <- find_primes(array)
print(prime_numbers)