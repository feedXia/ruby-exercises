# Create a function called shortcut to remove all the lowercase vowels in a given string.

# Examples

# "hello"     -->  "hll"
# "codewars"  -->  "cdwrs"
# "goodbye"   -->  "gdby"
# "HELLO"     -->  "HELLO"
# Don't worry about uppercase vowels.

def shortcut(s)
  p s.tr('aeiou', '')
end

# Tests
shortcut('hello')
#  => 'hll'
shortcut('codewars')
#  => 'cdwrs'
shortcut('goodbye')
#  => 'gdby'
shortcut('HELLO')
#  => 'HELLO'

# tr(from_str, to_str)
# Returns a copy of str with the characters in from_str replaced by the corresponding characters in to_str. If to_str is shorter than from_str, it is padded with its last character in order to maintain the correspondence.

# Alternate Solutions
# def shortcut(s)
#     s.delete('aieou')
# end