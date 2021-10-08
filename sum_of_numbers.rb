# Given two integers a and b, which can be positive or negative, find the sum of all the integers between and including them and return it. If the two numbers are equal return a or b.

# Note: a and b are not ordered!

# Examples (a, b) --> output (explanation)

# (1, 0) --> 1 (1 + 0 = 1)
# (1, 2) --> 3 (1 + 2 = 3)
# (0, 1) --> 1 (0 + 1 = 1)
# (1, 1) --> 1 (1 since both are same)
# (-1, 0) --> -1 (-1 + 0 = -1)
# (-1, 2) --> 2 (-1 + 0 + 1 + 2 = 2)

def get_sum(a, b)
  x = [a, b].min
  y = [a, b].max
  [*x..y].sum
end

# Alternative solution
# def get_sum(a,b)
#   return a < b ? (a..b).reduce(:+) : (b..a).reduce(:+)
# end

# tests
puts "**test 1**"
get_sum(0, 1)
puts "**test 2**"
get_sum(0, -1)
puts "**test 3**"
get_sum(1, 2)
puts "**test 4**"
get_sum(5, -1)
