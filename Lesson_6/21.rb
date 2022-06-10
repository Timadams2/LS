deck = { hearts: %w[2 3 4 5 6 7 8 9 10 Jack King Queen Ace],
         diamonds: %w[2 3 4 5 6 7 8 9 10 Jack King Queen Ace],
         spades: %w[2 3 4 5 6 7 8 9 10 Jack King Queen Ace],
         clubs: %w[2 3 4 5 6 7 8 9 10 Jack King Queen Ace] }

def prompt(message)
  puts "=> #{message}"
end

def determine_winner(player, dealer)
  if player == dealer
    prompt('Draw')
  elsif dealer >= player
    prompt('Dealer wins.')
  else
    prompt('Player wins!')
  end
end

def store_card(card, total_stored)
  total_stored << "#{card} "
end

def retrieve_card(dck, name)
  suit = dck.keys.sample
  card = dck[suit].sample
  store_card(card, name)
  if card.include?('Queen') || card.include?('King') || card.include?('Jack')
    10
  elsif card == 'Ace'
    11
  else
    card.to_i
  end
end

loop do
  player_cards = ''
  player_total = 0

  dealer_first_card = ''
  dealer_total = 0
  dealer_cards = "#{dealer_first_card}"

  puts '*Dealer draws a card*'
  dealer_total += retrieve_card(deck, dealer_first_card)
  puts '*You draw a card*'
  player_total += retrieve_card(deck, player_cards)
  puts '*Dealer draws a face down card*'
  dealer_total += retrieve_card(deck, dealer_cards)

  loop do
    prompt("Your Cards: #{player_cards} (#{player_total} points)")
    prompt("Dealers Cards: #{dealer_first_card}+ ?")
    prompt('Would you like to hit or stay?')
    turn = gets.chomp
    if turn.downcase.start_with?('h')
      puts '*You draw a card*'
      player_total += retrieve_card(deck, player_cards)
      if player_total == 21
        prompt('21! Player wins')
        break
      elsif player_total >= 22
        if player_cards.split.last == 'Ace'
          player_total -= 10
        else
          prompt("BUSTED! You drew a #{player_cards.split.last}. Dealer wins")
          break
        end
      end
    elsif turn.downcase.start_with?('s')
      loop do
        if dealer_total == 21
          prompt('21! Dealer wins')
          break
        elsif dealer_total >= 22
          prompt('BUSTED! Player wins.')
          break
        elsif dealer_total <= 17
          puts '*Dealer draws another card*'
          dealer_total += retrieve_card(deck, dealer_cards)
          prompt("Dealers Cards: #{dealer_first_card}#{dealer_cards} (#{dealer_total} points)")
        else
          prompt("Your Cards: #{player_cards} (#{player_total} points)")
          prompt("Dealers Cards:  #{dealer_first_card}#{dealer_cards} (#{dealer_total} points)")
          determine_winner(player_total, dealer_total)
          break
        end
      end
      break
    else
      prompt('invalid response. Type hit or stay')
    end
  end
  prompt('Would you like to play again?')
  answer = gets.chomp
  puts '================================='
  break unless answer.start_with?('y')
end
