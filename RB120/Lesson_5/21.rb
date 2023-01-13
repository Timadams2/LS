class Participant
  attr_accessor :cards

  def initialize
    @cards = []
  end

  def add_card(card)
    cards << card
  end

  def hit(card)
    add_card(card)
    puts "Dealt #{card}"
  end

  def total
    total += faces.count { |f| f == 'Jack' || f == 'Queen' || f == 'King' } * 10

    faces = cards.map(&:face)

    faces.each { |face| total += face.to_i }

    faces.each do |face|
      determine_ace(total) if face == 'Ace'
    end
    total
  end

  def determine_ace(total)
    if total < 11
      total += 10
    else
      total + 1
    end
  end

  def busted?
    total > 21
  end
end

class Player < Participant
  attr_accessor :cards
end

class Dealer < Participant
  attr_accessor :cards

  def hit?
    total < 17
  end
end

class Deck
  attr_reader :deck

  SUITS = %w(Hearts Diamonds Clubs Spades)
  FACES = %w(2 3 4 5 6 7 8 9 10 Jack Queen King Ace)

  def initialize
    @deck = []
    SUITS.each do |suit|
      FACES.each do |face|
        card = Card.new(suit, face)
        @deck << card
      end
    end
  end

  def deal
    @deck.pop
  end

  def shuffle
    @deck.shuffle!
  end
end

class Card
  attr_reader :face, :suit

  def initialize(suit, face)
    @face = face
    @suit = suit
  end

  def to_s
    "#{@face} of #{@suit}"
  end
end

class Game
  attr_accessor :player, :dealer, :deck

  def start
    loop do
      deal_cards
      show_initial_cards
      player_turn
      dealer_turn
      show_result
      break if play_again? == false
    end
  end

  def deal_cards
    @player = Player.new
    @dealer = Dealer.new
    @deck = Deck.new
    @deck.shuffle
    2.times do
      player.add_card(deck.deal)
      dealer.add_card(deck.deal)
    end
  end

  def show_initial_cards
    puts show_player_cards
    puts show_dealer_initial_cards
  end

  def show_player_cards
    puts ''
    puts 'You have the following cards:'
    puts @player.cards
    puts ''
  end

  def show_dealer_cards
    puts 'Dealer has the following cards:'
    puts @dealer.cards
  end

  def show_dealer_initial_cards
    puts 'Dealer has the following cards:'
    puts @dealer.cards.first
    puts 'Uknown Card'
  end

  def player_turn
    loop do
      puts 'Would you like to hit or stay?'
      answer = gets.chomp.downcase

      if answer == 'hit'
        player.add_card(deck.deal)
      elsif answer == 'stay'
        break
      else
        'Invalid answer, please type hit or stay'
      end

      if player.busted?
        puts 'BUSTED'
        break
      end

      show_player_cards
    end
  end

  def dealer_turn
    loop do
      break if player.busted?
      show_dealer_cards
      break unless dealer.hit?
      dealer.add_card(deck.deal)
      break if dealer.busted?
    end
  end

  def show_result
    puts ''
    puts "Game Result:"
    puts "You ended with a total of #{player.total}"
    puts "Dealer ended up with a total of #{dealer.total}"
    if (player.total < dealer.total && dealer.busted? == false) || player.busted?
      puts '*Dealer won*'
    elsif player.total > dealer.total || dealer.busted?
      puts '*You won*'
    else
      puts '*Draw*'
    end
    puts ''
  end

  def play_again?
    answer = nil
    loop do
      puts 'Would you like to play again? (y/n)'
      answer = gets.chomp.downcase
      break if answer.chars.first == 'n' || answer.chars.first == 'y'
      puts 'Invalid answer.'
    end
    return true if answer.chars.first == 'y'
  end
end

Game.new.start
