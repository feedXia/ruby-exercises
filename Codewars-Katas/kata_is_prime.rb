# Define a function that takes one integer argument and returns logical value true or false depending on if the integer is a prime.

# Per Wikipedia, a prime number (or a prime) is a natural number greater than 1 that has no positive divisors other than 1 and itself.

# Requirements

# You can assume you will be given an integer input.
# You can not assume that the integer will be only positive. You may be given negative numbers as well (or 0).
# NOTE on performance: There are no fancy optimizations required, but still the most trivial solutions might time out. Numbers go up to 2^31 (or similar, depends on language version). Looping all the way up to n, or n/2, will be too slow.

# Example
# is_prime(1)  /* false */
# is_prime(2)  /* true  */
# is_prime(-1) /* false */

# 2, 3, 5, 7, 11
def isPrime(num)
  return false if num < 2
  (2..Math.sqrt(num.abs)).none? { |i| (num % i) == 0 }
end

# Alternative Solutions
require "prime"

def isPrime(num)
  num.prime?
end

def isPrime(num)
  num < 2 ? false : (2..Math.sqrt(num)).none? { |i| num % i == 0 }
end

# Tests
isPrime(4)
#  => false
isPrime(100)
#  => false
isPrime(999)
# => false
isPrime(958297)
# => false
isPrime(-7)
# => false

isPrime(2)
# => true
isPrime(3)
# => true
isPrime(5)
# => true
isPrime(457)
# => true
isPrime(39229)
# => true
