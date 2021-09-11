print "Choose an integer: "
x = Integer(gets.chomp.to_i)

if x % 3 == 0 && x % 5 ==0
	puts "FizzBuzz"
elsif x % 5 == 0
	puts "Buzz"
elsif x % 3 == 0
	puts "Fizz"
else
	puts x
end




	