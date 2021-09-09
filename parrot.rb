print "What would you like to repeat? "

while true
	input = gets.chomp
	puts input
	break if input.upcase! == "STOP"
end