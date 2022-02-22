famous_words = "seven years ago..."

puts 'Four score and'.insert(0, famous_words) # WRONG
puts famous_words.prepend('Four score  ')
 # also
puts "Four score and" << famous_words
puts "Four score and" + famous_words
