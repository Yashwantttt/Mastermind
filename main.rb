require_relative "colorGenerator.rb"
require_relative "instruction.rb"
require_relative "guess_checker.rb"

puts instruction


# code = c_code
colors = ["R","Y","B","G","P","W"]
color_code = c_code(colors)
puts "The game is started"
guess = 0 
while guess < 8
  puts " o o o o "
  puts " 1 2 3 4 "
  puts "Enter your guess (chance #{guess +1}):"
  user_guess = gets.chomp.split
  checker(user_guess,color_code)
  guess +=1

  if (user_guess == color_code) 
    puts "Congratulations ! You Won"
    break
  end
  if (guess == 7 && user_guess != color_code)
    puts "You Lost ! Code was - #{color_code}"
  end

end
