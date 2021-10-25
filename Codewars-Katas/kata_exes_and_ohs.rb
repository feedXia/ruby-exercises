# Check to see if a string has the same amount of 'x's and 'o's. The method must return a boolean and be case insensitive. The string can contain any char.

#   Examples input/output:

#   XO("ooxx") => true
#   XO("xooxx") => false
#   XO("ooxXm") => true
#   XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
#   XO("zzoo") => false

def XO(str)
  p str.downcase.count("x") == str.downcase.count("o")
end

# Alternative Solution
# def XO(str)
#   str.count('Xx') == str.count('oO')
# end

# Tests
XO("xo")
# => true
XO("XO")
# => true
XO("xo0")
# => true
XO("xxxoo")
# => false
XO("xxOo")
#  => true
