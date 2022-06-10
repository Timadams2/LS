# method thats take a string arg
# returns array that contains every word from the string with a space and the amount of chars

def word_lengths(string)
  
  string.split.map do |word|
    word + ' ' + word.length.to_s
  end 
end 

puts word_lengths("cow sheep chicken")

puts word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

puts word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

puts word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

puts word_lengths("") == []