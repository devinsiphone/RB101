# rock_paper_scissors_lizard_spock.rb
#
# This game is a variation on the Rock Paper Scissors game that adds two more options - Lizard and 
# Spock. The full explanation and rules are here. There's also a hilarious Big Bang Theory video about
# it here.
#
# The goal of this bonus is to add Lizard and Spock into your code.
#
# Typing the full word "rock" or "lizard" is tiring. Update the program so the user can type "r" for 
# "rock," "p" for "paper," etc. Note that if you do bonus #1, you'll have two words that start with 
# "s." How do you resolve that?
#
# Keep score of the player's and computer's wins. When either the player or computer reaches five wins,
# the match is over, and the winning player becomes the grand winner. Don't add your incrementing logic
# to display_results. Keep your methods simple; they should perform one logical task — no more, no
# less.

VALID_CHOICES = %w[rock paper scissors lizard spock]
VALID_CHOICES_PROMPT = %w[(r)ock (p)aper (s)cissors (l)izard spoc(k)]
VALID_CHOICES_ABBREVIATIONS = %w[r p s l k]

def prompt(message)
  Kernel.puts("=> #{message}")
end

def validate_input(input)
  case input
  when 'r', 'rock'
    output = VALID_CHOICES[0]
  when 'p', 'paper'
    output = VALID_CHOICES[1]
  when 's', 'scissors'
    output = VALID_CHOICES[2]
  when 'l', 'lizard'
    output = VALID_CHOICES[3]
  when 'k', 'spock'
    output = VALID_CHOICES[4]
  else
    output = nil
  end
end

def win?(first, second)
  (first == 'scissors' && second == 'paper') ||
    (first == 'paper' && second == 'rock') ||
    (first == 'rock' && second == 'lizard') ||
    (first == 'lizard' && second == 'spock') ||
    (first == 'spock' && second == 'scissors') ||
    (first == 'scissors' && second == 'lizard') ||
    (first == 'lizard' && second == 'paper') ||
    (first == 'paper' && second == 'spock') ||
    (first == 'spock' && second == 'rock') ||
    (first == 'rock' && second == 'scissors')
end

def display_results(player, computer)
  if win?(player, computer)
    "You won!"
  elsif win?(computer, player)
    "Computer won!"
  else
    "It's a tie!"
  end
end

# main loop
loop do
  choice = ''
  loop do
    prompt("Choose one: #{VALID_CHOICES_PROMPT.join(', ')}")
    choice = Kernel.gets().chomp()

    choice = validate_input(choice)

    if VALID_CHOICES.include?(choice)
      break
    else
      prompt("That's not a valid choice.")
    end
  end

  computer_choice = VALID_CHOICES.sample

  Kernel.puts("You chose: #{choice}; Computer chose: #{computer_choice}")

  puts display_results(choice, computer_choice)

  prompt('Do you want to play again?')
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for playing #{VALID_CHOICES.join(', ')}. Good bye!")
