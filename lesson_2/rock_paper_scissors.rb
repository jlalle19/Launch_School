#rock paper scissors vs computer using user inputs

VALID_CHOICES = ['rock', 'paper', 'scissors']

def prompt(message)
  puts("=> #{message}")
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
    (player == 'paper' && computer == 'rock') ||
    (player == 'scissors' && computer == 'paper')
  prompt("You won!")
elsif (player == 'rock' && computer == 'paper') ||
      (player == 'paper' && computer == 'scissor') ||
      (player == 'scissors' && computer == 'rock')
  prompt("You lost.")
else
  prompt("It's a tie!")
end
prompt("Player's choice: #{player.capitalize}")
prompt("      VS")
prompt("Computer choice: #{computer.capitalize}")
end

loop do
  choice = ''
  loop do
    prompt("Hello! #{VALID_CHOICES.join(', ')}, shoot! (enter rock, paper, or scissors)")
    choice = gets.chomp

    if VALID_CHOICES.include?(choice)
      break
    else 
      prompt("That is not a valid choice, try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample #get a random choice from VALID_CHOICES

  display_results(choice, computer_choice) #rock paper scissors logic & output

  prompt("Do you want to play again?")
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt("Thank you for playing, good bye!")


