# Write a function that takes an integer as input, and returns the number of bits that are equal to one in the binary representation of that number. You can guarantee that input is non-negative.

# Example: The binary representation of 1234 is 10011010010, so the function should return 5 in this case

def count_bits(n)
  # TODO: Program me
  binary = n.to_s(2)
  array = binary.split("").map(&:to_i)
  array.count(1)
end

# Alternative Solution
# def count_bits(n)
#   n.to_s(2).count "1"
# end

count_bits(0)
count_bits(4)
count_bits(7)
count_bits(9)
count_bits(10)
