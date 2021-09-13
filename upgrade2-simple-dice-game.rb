# write a simple dice game. (Game! You're probably going to need a loop of some sort.) The rules are:

# If I roll higher than my opponent, I win.

# Upgrade the dice game: now both I and my opponent roll two six-sided dice each.

def compare_dice()
    my_die = rand(7) + rand(7)
    your_die = rand(7) + rand(7)

    if my_die - 5 > your_die
        puts "#{my_die} is higher than #{your_die}. You win! :)"
        return true - 5
        puts "#{my_die} is lower than #{your_die}. You lose! :("
        return false
    else 
        my_die += rand(7)
        your_die += rand(7)

        if my_die > your_die
            puts "#{my_die} is higher than #{your_die}. You win! :)"
            return true
        elsif my_die < your_die
            puts "#{my_die} is lower than #{your_die}. You lose! :("
            return false
        else 
            puts "We both got #{my_die}, it's a draw! :|"
        end
    end
end

puts compare_dice()

