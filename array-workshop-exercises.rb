#Q1: turn this [[1,1,1,1], [2,2,2,2]] into this [4, 8]

a = [1, 1, 1, 1]
b = [2, 2, 2, 2]
p [a.sum, b.sum]

# ******************
#Q2: select the odd numbers from this array [1,2,3,4,5,6,7,8,9,10] => [1,3,5,7,9]

array = [1, 2, 3, 4, 5, 6, 7, 8, 9]
array.each do |x| 
array.delete(x) if x % 2 == 0
end
p array

# ******************
#Q3 puts each name that starts with ‘S’ from 
#[‘Sandy’, ‘Terrence’,‘Susan’, ‘Humphrey’, ‘Simone’, ‘Englebert’, ‘Imogen’, ‘Ron’]

names = ["Sandy", "Terrence", "Susan", "Humphrey", "Simone", "Englebert", "Imogen", "Ron"]
names.each do |x| 
    puts x if x.start_with?('S')
end

# ******************
#Q4 create a new array of these names in block caps 
#[‘Sandy’, ‘Terrence’,‘Susan’, ‘Humphrey’, ‘Simone’, ‘Englebert’, ‘Imogen’, ‘Ron’]

p names_upcase = names.map(&:upcase)

# ******************
#Q5 get user input and add whatever they say to an array, 
#stop when they say ‘stop’ -> combining loops and arrays

input = ""
whatever_array = Array.new
while input.downcase != "stop"
    input = gets.chomp
    whatever_array.push(input)
end

p whatever_array