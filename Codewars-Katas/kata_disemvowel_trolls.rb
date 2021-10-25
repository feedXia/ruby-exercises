# Trolls are attacking your comment section!

# A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.

# Your task is to write a function that takes a string and return a new string with all vowels removed.

# For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".

# Note: for this kata y isn't considered a vowel.

def disemvowel(str)
  p str.gsub(/[aeiou]/, "").gsub(/[AEIOU]/, "")
end

# Alternative solutions
# def disemvowel(str)
#   str.delete "aeiouAEIOU"
# end

# def disemvowel(str)
#   str.gsub /[aeiou]/i, ""
#   # i shows regexp (regular expression) is case insensitive
# end

# def disemvowel(str)
#   vowels = "aouei"
#   str.delete(vowels + vowels.upcase)
# end

# Test
disemvowel("This website is for losers LOL!") # "Ths wbst s fr lsrs LL!"
