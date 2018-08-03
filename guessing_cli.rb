# Code your solution here!

#helper method that checks the guess 
def guess (correct_guess)
  # exit = false
  # loop do
  #   puts "Guess a number between 1 and 6."
  #   input = gets.chomp
  #   if (input.to_i > correct_guess)
  #     puts "A little too high!!"
  #   elsif (input.to_i < correct_guess )
  #     puts "A little too low!!"
  #   end
  #   break if (input.to_i == correct_guess)
  # end
  #   puts "You guessed the correct number!"
  #   exit = true
  exit = false
  
end

#help method runs the a list of valid commands to be done
def help
  puts "The following commands are valid:\n
  guess, help, or exit"
end

def welcome 
  puts "Hi, and welcome to the guessing game!!"
end

def exit 
  puts "Goodbye!!"
end

#runs game loop
def run_guessing_game
  loop do 
    welcome
    help
    exit_condition = false
    user_input = gets.chomp
      if (user_input == "guess")
        number = rand(1..6)
        exit_condition = guess(number)
      elsif (user_input == "help")
        help
      end
    break if (user_input.upcase == "exit" || exit_condition == true)
  end
  exit
end

# run_guessing_game