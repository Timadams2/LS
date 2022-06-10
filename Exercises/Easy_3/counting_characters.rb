puts "Please write word or mutiple words: "
answer = gets.chomp
characters = answer.delete(' ').size

puts "There are #{characters} characters in '#{answer}'."