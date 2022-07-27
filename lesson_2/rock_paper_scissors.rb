# rock paper scissors vs computer using user inputs

VALID_CHOICES = ['rock', 'paper', 'scissors', 'spock', 'lizard']
VALID_CHOICES_ABBREVIATED = ['r', 'p', 's', 'sp', 'l']

$player_score = 0
$computer_score = 0

def prompt(message)
  puts("=> #{message}")
end

# side effect: none
# returns: choice variable to be its equivalent in VALID_CHOICES

def enlongate_choice(abbreviated_choice)
  i = 0
  VALID_CHOICES_ABBREVIATED.each do |ref|
    if ref == abbreviated_choice
      return VALID_CHOICES[i]
    end
    i = i + 1
  end
end

def display_results(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper') ||
     (player == 'rock' && computer == 'lizard') ||
     (player == 'paper' && computer == 'spock') ||
     (player == 'scissors' && computer == 'lizard') ||
     (player == 'spock' && computer == 'scissors') ||
     (player == 'lizard' && computer == 'paper') ||
     (player == 'spock' && computer == 'rock') ||
     (player == 'lizard' && computer == 'spock')
    prompt("You won!")
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissor') ||
        (player == 'scissors' && computer == 'rock') ||
        (player == 'rock' && computer == 'spock') ||
        (player == 'paper' && computer == 'lizard') ||
        (player == 'scissors' && computer == 'spock') ||
        (player == 'lizard' && computer == 'rock') ||
        (player == 'spock' && computer == 'lizard') ||
        (player == 'lizard' && computer == 'scissors') ||
        (player == 'spock' && computer == 'paper')
    prompt("You lost.")
  else
    prompt("It's a tie!")
  end
  prompt("Player's choice: #{player.capitalize}")
  prompt("      VS")
  prompt("Computer choice: #{computer.capitalize}")
end

# side effect: updates $player_score and $computer_score
# return: nil

def track_score(player, computer)
  if (player == 'rock' && computer == 'scissors') ||
     (player == 'paper' && computer == 'rock') ||
     (player == 'scissors' && computer == 'paper') ||
     (player == 'rock' && computer == 'lizard') ||
     (player == 'paper' && computer == 'spock') ||
     (player == 'scissors' && computer == 'lizard') ||
     (player == 'spock' && computer == 'scissors') ||
     (player == 'lizard' && computer == 'paper') ||
     (player == 'spock' && computer == 'rock') ||
     (player == 'lizard' && computer == 'spock')
    $player_score = $player_score + 1
  elsif (player == 'rock' && computer == 'paper') ||
        (player == 'paper' && computer == 'scissor') ||
        (player == 'scissors' && computer == 'rock') ||
        (player == 'rock' && computer == 'spock') ||
        (player == 'paper' && computer == 'lizard') ||
        (player == 'scissors' && computer == 'spock') ||
        (player == 'lizard' && computer == 'rock') ||
        (player == 'spock' && computer == 'lizard') ||
        (player == 'lizard' && computer == 'scissors') ||
        (player == 'spock' && computer == 'paper')
    $computer_score = $computer_score + 1
  end
end

# side effect: displays score information and whether the player or computer is the grand winner
# return: nil

def display_score(pscore, cscore)
  if pscore > 1
    prompt("Player's score: #{$player_score}")
    prompt("      VS")
    prompt("Computer score: #{$computer_score}")
    prompt("Congratulations! You are the grand winner.")
  elsif cscore > 1
    prompt("Player's score: #{$player_score}")
    prompt("      VS")
    prompt("Computer score: #{$computer_score}")
    prompt("Yikes. The computer is the grand winner.")
  else
    prompt("Player's score: #{$player_score}")
    prompt("      VS")
    prompt("Computer score: #{$computer_score}")
  end
end

# side effects: prompt user to play again and resets the score count
# return: true or false depending if the the user wants to replay
def is_finished(pscore, cscore)
  if pscore > 1 || cscore > 1
    $player_score = 0
    $computer_score = 0
    prompt("Do you want to play again?")
    answer = gets.chomp
    return true unless answer.downcase.start_with?('y')
  else
    return false
  end
end


while !is_finished($player_score, $computer_score) do
  choice = ''
  loop do
    prompt("Hello, best 2 out of 3 to win. #{VALID_CHOICES.join(', ')}, go! (enter #{VALID_CHOICES_ABBREVIATED.join(', ')})")
    choice = gets.chomp

    if VALID_CHOICES_ABBREVIATED.include?(choice)
      break
    else
      prompt("That is not a valid choice, try again.")
    end
  end

  computer_choice = VALID_CHOICES.sample # get a random choice from VALID_CHOICES

  choice = enlongate_choice(choice)
  display_results(choice, computer_choice) # rock paper scissors logic & output
  track_score(choice, computer_choice)
  display_score($player_score, $computer_score)
end

prompt("Thank you for playing, good bye!")
