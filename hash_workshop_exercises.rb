# Q1
# Create a program that
# prompts the user for details about their favourite animal
# stores the details as values, assigned to appropriate keys
# prints the hash once the interrogation has finished

interrogation = {}

puts "What's your favourite animal?"
interrogation["fav_animal"] = gets.chomp

puts "Why do you like this animal?"
interrogation["why"] = gets.chomp

puts "When did you start liking this animal?"
interrogation["when"] = gets.chomp

puts "Do you know anyone else who likes this animal?"
interrogation["anyone_else"] = gets.chomp

puts interrogation

# Q2
# Create a program that
# prints all the keys in a hash
# prompts the user to select a key
# returns the value associated with that key
# Iterate over a hash and print only the values that begin with 'S'

char_selection = {
  "Harry Potter" => "Wizard",
  "Shrek" => "Ogre",
  "BayMax" => "Robot",
  "BFG" => "Giant",
  "Woody" => "Toy",
  "Frodo Baggins" => "Hobbit",
  "Kakashi" => "Shinobi"
}

puts char_selection
puts "Please select one of the character names above: "
user_selection = gets.chomp.capitalize
puts "Your chosen character #{user_selection} has species: "
puts char_selection[user_selection]

puts "The species that begin with 'S' are: "
char_selection.each do |char, species|
  puts species if species.start_with?("S")
end