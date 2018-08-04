# Code your solution here!

# #helper method that checks the guess 
# def guess (correct_guess)
#   input = gets.chomp 
#   msg = ''
#   if (input.to_i == correct_guess)
#     msg = "You guessed the correct number!"
#   else
#     msg = "The computer guess #{correct_guess}."
#   end
#   return msg
# end

# #help method runs the a list of valid commands to be done
# def welcome
#   puts "Guess a number between 1 and 6."
# end

# def help 
#   puts "Hi, and welcome to the guessing game!!\n 
#   The following commands are valid:\n\n  
#     guess, help, or exit"
# end

# def exit (msg)
#   puts msg
# end

# #runs game loop
# def run_guessing_game
#   welcome
#   help
#   msg = "Goodbye!"
#   number = rand(1..6)
#   loop do 
#     user_input = gets.chomp
#       if (user_input == "guess")
#         msg = guess(number)
#       elsif (user_input == "help")
#         help
#       end
#     break if (user_input == "exit")
#   end
#   exit(msg)
# end

def run_guessing_game
  user_input = ""
  while user_input
    puts "Guess a number between 1 and 6."
    user_input = gets.downcase.chomp
    random_number = rand(1..6).to_s
    case user_input.chomp
    when random_number
      puts "You guessed the correct number!"
    when 'exit'
      puts "Goodbye!"
      break
    else
      puts "The computer guessed #{random_number}."
    end
  end
end

# run_guessing_game