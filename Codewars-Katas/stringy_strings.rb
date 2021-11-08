# write me a function stringy that takes a size and returns a string of alternating '1s' and '0s'.

# the string should start with a 1.

# a string with size 6 should return :'101010'.

# with size 4 should return : '1010'.

# with size 12 should return : '101010101010'.

# The size will always be positive and will only use whole numbers.

# def stringy(size)
#   p (1..size).map { |i| i.even? ? 0 : 1 }.join
# end

# Tests
stringy(3)
#  => '101'
stringy(5)
#  => '10101'
stringy(12)
#  => '101010101010'
stringy(26)
#  => '10101010101010101010101010'
stringy(28)
#  => '1010101010101010101010101010'

# Alternate Solutions

# def stringy(size)
#   "10" * (size / 2) + "1" * (size % 2)
# end

# def stringy(size)
#   p ("10" * size)[0, size]
# end
# [0, size]  returns a substring of length "size" that starts at index 0 of the string in the brackets.
# str[start, length]

# def stringy(size)
#   (1..size).map { |i| i % 2 }.join
# end

# def stringy(s)
#   "".rjust(s, "10")
# end
