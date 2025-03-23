def checker(user_guess, code)
  right_position = []

  user_guess.each_with_index do |guess, index|
    if guess == code[index]
      puts "Guess is right at #{index + 1} place"
      right_position << guess
    end
  end

  j = 0
  while j < user_guess.length
    code.each do |clr|
      if (user_guess[j] == clr && user_guess[j] != code[j] && !(right_position.include?(clr)))
        puts "#{clr} color at wrong position"
      end
    end
    j += 1
  end
end
