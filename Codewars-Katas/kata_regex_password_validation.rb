# You need to write regex that will validate a password to make sure it meets the following criteria:

# At least six characters long
# contains a lowercase letter
# contains an uppercase letter
# contains a number
# Valid passwords will only be alphanumeric characters.

regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(\d|[a-z]|[A-Z]){6,}$/

# ^ Matches the beginning of a line.
# (?=.*[a-z]) Look ahead for an arbitrary string followed by a lower case letter.
# (?=.*[A-Z] Look ahead for an arbitrary string followed by a capital letter.
# (?=.*\d) Look ahead for an arbitrary string followed by a number.
# (\d|[a-z]|[A-Z]){6,} Ensure there are at least 6 alphanumeric characters.
# $ Matches the end of a line.

# Tests
# fjd3IR9
p (regex =~ "fjd3IR9") == 0
#  => true
# ghdfj32
p (regex =~ "ghdfj32") == 0
#  => false
#  DSJKHD23
p (regex =~ "DSJKHD23") == 0
#  => false
#  dsF43
p (regex =~ "dsF43") == 0
#  => false
p (regex =~ "4fdg5Fj3") == 0
#  => true
p (regex =~ "DHSJdhjsU") == 0
#  => false
p (regex =~ "fjd3IR9.;") == 0
#  => false
p (regex =~ "fjd3  IR9") == 0
#  => false
p (regex =~ "djI38D55") == 0
#  => true
p (regex =~ "a2.d412") == 0
#  => false
p (regex =~ "JHD5FJ53") == 0
#  => false
p (regex =~ "!fdjn345") == 0
#  => false
p (regex =~ "jfkdfj3j") == 0
#  => false
p (regex =~ "123") == 0
#  => false
p (regex =~ "abc") == 0
#  => false
p (regex =~ "123abcABC") == 0
#  => true
p (regex =~ "ABC123abc") == 0
#  => true
p (regex =~ "Password123") == 0
#  => true

# Alternate Solutions
regex = /\A(?=.*[a-z])(?=.*[A-Z])(?=.*\d)[A-Za-z0-9]{6,}\z/
# \A Matches the beginning of the string.
# \z Matches the end of the string.
# \Z Matches the end of the string unless the string ends with a "\n", in which case it matches just before the "\n"
regex = /(?=.*\p{Upper})(?=.*\p{Lower})(?=.*\d)\A\p{Alnum}{6,}\z/
#  \p{} matches characters with the named property
#  /\p{Alnum}/ Alphabetic and numeric character
regex = /(?=.*[A-Z])(?=.*[a-z])(?=.*[0-9])^[a-zA-Z0-9]{6,}$/
