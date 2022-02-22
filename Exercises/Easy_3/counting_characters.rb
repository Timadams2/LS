puts "Please write word or multiple words: "
input = gets.chomp

characters = input.delete(' ').size

puts "There are #{characters} characters in \"#{input}\"."
