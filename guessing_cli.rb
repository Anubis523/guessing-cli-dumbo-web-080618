# Code your solution here!

#helper method that checks the guess 
def guess (correct_guess)
  input = gets.chomp 
  msg = ''
  if (input.to_i == correct_guess)
    msg = "You guessed the correct number!"
  else
    msg = "The computer guess #{correct_guess}."
  end
  msg
end

#help method runs the a list of valid commands to be done
def welcome
  puts "Guess a number between 1 and 6."
end

def help 
  puts "Hi, and welcome to the guessing game!!\n 
  The following commands are valid:\n\n  
    guess, help, or exit"
end

def exit (msg = "Goodybe!")
  puts msg
end

#runs game loop
def run_guessing_game
  welcome
  help
  msg = ""
  number = rand(1..6)
  loop do 
    user_input = gets.chomp
      if (user_input == "guess")
        msg = guess(number)
      elsif (user_input == "help")
        help
      end
    break if (user_input == "exit")
  end
  exit(msg)
end

# run_guessing_game