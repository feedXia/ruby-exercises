def title_case(title, minor_words = "")
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