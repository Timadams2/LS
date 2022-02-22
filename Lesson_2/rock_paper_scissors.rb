VALID_CHOICE = %w(rock paper scissors)

def prompt(message)
  puts("=> #{message}")
end

loop do
  choice = ''
  loop do
    prompt("Choose one: rock, paper, scissors")
    choice = gets.chomp
    
    if VALID_CHOICE.include?(choice)
      break
    else
      prompt("That's not a valid choice")
    end
  end
  
  computer_choice = VALID_CHOICE.sample
  
  prompt("You chose: #{choice}; Computer choice: #{computer_choice}")
  
  if (choice == 'rock' && computer_choice == 'scissors') ||
      (choice == 'scissors' && computer_choice == 'paper') ||
      (choice == 'paper' && computer_choice == 'rock')
    prompt('You win!')
  elsif (choice == 'rock' && computer_choice == 'paper') ||
        (choice == 'paper' && computer_choice ==  'scissors')
        (choice == 'scissors' && computer_choice == 'rock')
    prompt('Computer wins!')
  else
    prompt("It's a tie")
  end
        
  prompt('Do you want to play again?')
  answer = gets.chomp
  break unless answer.downcase.start_with?('y')
end

prompt('Thank you for playing. Peace!')