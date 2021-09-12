# # The user starts by facing forward. 
# # They can move right, left, or forward. If they move right, they die (there's a goblin). If they move left, they die (there's a werewolf). 
# # If they move forward, they live. 
# # They have to do this twice to win.

# 1. The user is told they're facing forward and can type 'forward', 'left', or 'right'.
# 2. If the user enters 'right', they die (goblin).
# 3.If the user enters 'left', they die (werewolf).
# 4. If the user enters 'forward', they're told they live, and can move again.
# 5. If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 1 again.

# 6. If the user enters 'right', they die (goblin).
# 7. If the user enters 'left', they die (werewolf).
# 8. If the user enters 'forward', they're told they won and the game exits.
# 9. If the user enters anything other than 'right', 'left', or 'forward', they just get the message from 4 again.

move_number = 1

while true do 
  puts "You're facing forward. Type 'forward', 'left' or 'right' to move."
  move = gets.chomp.downcase

  if move == "forward"
    if move_number == 2
      puts "You win!"
      break
    end
    move_number += 1
  elsif move == "left"
    puts "You were killed by a werewolf!"
    break
  elsif move == "right"
    puts "You were killed by a goblin!"
    break
  end
end

