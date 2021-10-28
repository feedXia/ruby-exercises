# Write a function named repeater() that takes two arguments (a string and a number), and returns a new string where the input string is repeated that many times.

# Example: (Input1, Input2 --> Output)

# "a", 5 --> "aaaaa"

def repeater(string, n)
  p string * n
end

# Tests
repeater("a", 5)
#  => "aaaaa"
repeater("Na", 16)
#  => "NaNaNaNaNaNaNaNaNaNaNaNaNaNaNaNa"
repeater("Wub ", 6)
#  => "Wub Wub Wub Wub Wub Wub "
