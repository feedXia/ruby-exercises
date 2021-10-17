# A string is considered to be in title case if each word in the string is either (a) capitalised (that is, only the first letter of the word is in upper case) or (b) considered to be an exception and put entirely into lower case unless it is the first word, which is always capitalised.

#   Write a function that will convert a string into title case, given an optional list of exceptions (minor words). The list of minor words will be given as a string with each word separated by a space. Your function should ignore the case of the minor words string -- it should behave in the same way even if the case of the minor word string is changed.

#   ###Arguments (Haskell)

#   First argument: space-delimited list of minor words that must always be lowercase except for the first word in the string.
#   Second argument: the original string to be converted.
#   ###Arguments (Other languages)

#   First argument (required): the original string to be converted.
#   Second argument (optional): space-delimited list of minor words that must always be lowercase except for the first word in the string. The JavaScript/CoffeeScript tests will pass undefined when this argument is unused.
#   ###Example

#   title_case('a clash of KINGS', 'a an the of') # should return: 'A Clash of Kings'
#   title_case('THE WIND IN THE WILLOWS', 'The In') # should return: 'The Wind in the Willows'
#   title_case('the quick brown fox') # should return: 'The Quick Brown Fox'
def title_case(title, minor_words = "")
  title.capitalize.split().map { |a| minor_words.downcase.split().include?(a) ? a : a.capitalize }.join(" ")
end

def title_case(title, minor_words = "")
  words = title.capitalize.split(" ")
  minor_array = minor_words.downcase.split(" ")
  if words.length > 0
    first = words.first.split(" ")
    words_without_first = words.slice(1, words.length - 1)
    words = first + words_without_first.map { |word| minor_array.include?(word.downcase) ? word.downcase : word.capitalize }
  end
  p words.join(" ")
end

# Alternate Solutions
# def title_case(title, minor_words = "")
#   words = title.capitalize.split(" ")
#   minor_array = minor_words.downcase.split(" ")
#   words.map do |word|
#     if word == words.first
#       word.capitalize!
#     elsif minor_array.include? word.downcase
#       word.downcase!
#     else
#       word.capitalize!
#     end
#   end
#   p words.join(" ")
# end

# Tests
title_case("")
#  => ''
title_case("a clash of KINGS", "a an the of")
#  => 'A Clash of Kings'
title_case("THE WIND IN THE WILLOWS", "The In")
#  => 'The Wind in the Willows'
title_case("the quick brown fox")
#  => 'The Quick Brown Fox'
title_case("ab", "ab")
#  => 'ab'
title_case("First a of in", "an often into")
#  => 'First A Of In'
