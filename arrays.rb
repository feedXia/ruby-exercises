my_array = ["Hello", "there", "friend!"]
current_index = 0

while current_index < my_array.length do
  puts "I'm looping!"
  current_index += 1
end

puts "*******************"
my_array = ["Hello", "there", "friend!"]
current_index = 0

while current_index < my_array.length do
  puts my_array[current_index]
  current_index += 1
end

puts "*******************"
my_array = ["Hello", "there", "friend!"]

my_array.each do
  puts "I'm looping!"
end

puts "*******************"
my_array = ["Hello", "there", "friend!"]

my_array.each do |element|
  puts element
end