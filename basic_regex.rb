string = "The quick 12 brown foxes jumped over the 10 lazy dogs"

# check if string contains letter 'o'
p string =~ /o/
#  => 15, as 'o' is at index value of 15 in string

# check if string contains 'quick'
p string =~ /quick/
#  => 4

# if string contains letter 'z' return "Valid", else return "Invalid"
p string =~ /z/ ? "Valid" : "Invalid"

# if string contains letter 'Z' return "Valid", else return "Invalid"
p string =~ /Z/ ? "Valid" : "Invalid"

puts "**Case insensitive:**"
# if string contains letter 'Z' return "Valid", else return "Invalid"
p string =~ /Z/i ? "Valid" : "Invalid"

puts "**Search in range:**"
# if string contains letter 'Z' return "Valid", else return "Invalid"
p string =~ /[zZ]/ ? "Valid" : "Invalid"

puts "**Scans string finds all integers & return values:**"
p string.to_enum(:scan, /\d+/).map { Regexp.last_match }
