class Move
  VALUES = ['rock', 'paper', 'scissors']
  def initialize(value)
    @value = value
  end

  def scissors?
    @value == 'scissors'
  end

  def rock?
    @value == 'rock'
  end

  def paper?
    @value == 'paper'
  end

  def >(other_move)
    (rock? && other_move.scissors?) ||
    (paper? && other_move.rock?) ||
    (scissors? && other_move.paper?)
  end

  def to_s
    @value
  end
end

class Player
  attr_accessor :move, :name

  def initialize
    set_name
  end

  def human?
    @player_type == :human
  end
end

class Human < Player
  def set_name
    n = ''
    loop do
      puts 'What is your name?'
      n = gets.chomp
      break unless n.empty?      
      puts 'Invalid answer. You must type your name.'
    end
    self.name = n
  end

  def choose
    choice = ''
    loop do
      puts 'Please pick rock, paper or scissors'
      choice = gets.chomp
      break if Move::VALUES.include?(choice)
      puts 'Invalid choice, choose again.'
    end
    self.move = Move.new(choice)
  end
end

class Computer < Player
  def set_name
    self.name = ['ROB', 'Edna', 'Jack5'].sample
  end

  def choose
    self.move = Move.new(Move::VALUES.sample)
  end
end

class RPSGame
  attr_accessor :human, :computer

  def initialize
    @human = Human.new
    @computer = Computer.new
  end

  def display_welcome_message
    puts 'Welcome to Rock-Paper-Scissors!'
  end

  def display_goodbye_message
    puts 'Thanks for playing. Good riddance.'
  end
  
  def display_move
    puts '-----------------------'
    puts "You chose #{human.move}"
    puts "The computer chose #{computer.move}"
  end
  
  def display_winner
    if human.move > computer.move
      puts "#{human.name} won!"
    elsif computer.move > human.move
      puts "#{computer.name} won!"
    else
      puts 'It is a tie!'
    end
  end

  def play_again?
    answer = nil
    loop do
      puts 'Would you like to play again?'
      answer = gets.chomp
      break if answer.empty? == false
      puts 'Invalid answer, answer yes or no'
    end
    
    return true if answer.downcase.chars.first == 'y'
  end

  def play
    display_welcome_message
    loop do
      human.choose
      computer.choose
      display_move
      display_winner
      break unless play_again?
    end
    display_goodbye_message
  end
end

RPSGame.new.play