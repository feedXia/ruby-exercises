# Find the number with the most digits.

# If two numbers in the argument array have the same number of digits, return the first one in the array.

def find_longest(arr)
  digits = arr.map { |d| d.to_s.length }
  p arr[digits.index(digits.max)]
end

# Alternative Solutions
def find_longest(arr)
  arr.max_by { |num| num.to_s.size }
end

# Tests
find_longest([1, 10, 100])
#  => 100
find_longest([9000, 8, 800])
#  => 9000
find_longest([8, 900, 500])
#  => 900
find_longest([3, 40000, 100])
#  => 40000
find_longest([1, 200, 100000])
#  => 100000
