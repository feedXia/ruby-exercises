# write a simple dice game. (Game! You're probably going to need a loop of some sort.) The rules are:

# If I roll higher than my opponent, I win.

def compare_dice()
    my_die = rand(7)
    your_die = rand(7)

    if my_die > your_die
        puts "#{my_die} is higher than #{your_die}. You win! :)"
        return true
    else
        puts "#{my_die} is lower than #{your_die}. You lose! :("
        return false
    end
end

puts compare_dice()

