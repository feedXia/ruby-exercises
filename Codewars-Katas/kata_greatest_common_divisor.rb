# Find the greatest common divisor of two positive integers. The integers can be large, so you need to find a clever solution.

# The inputs x and y are always greater or equal to 1, so the greatest common divisor will always be an integer that is also greater or equal to 1.

def mygcd(x, y)
  x, y = y, x % y until y.zero?
  p x
end

mygcd(30, 12)
# 30 = 12*2 + 6
# gcd(30,12) = gcd(12,6)
# 12 = 6*2 + 0
# gcd(30,12) = gcd(12,6) = gcd(6,0)
# => 6
mygcd(8, 9)
# => 1
mygcd(1, 1)
# => 1
