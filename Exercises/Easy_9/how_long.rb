# write a method that takes a string
# return an array that conatains every word from the string with the amount of characters in the string
# should be one strinng for each word
# space in between the word and the amount of characters
# every word is split up by a space
# if string is empty, return empty array

# input string
# output: array
# DS: hash?
# algorithm: 
  # initialize empty hash
  # split the sentence up into words
    # use split 
    
  # find how many characters are in the word
    # iterate through the words
    # on each iteration, find the length of the string
    # add the word as the value and the number and the key into above hash 
    
  # then intiliaze empty array
    # use string interpolation to add the string to the array 
  
  # return that array
  
  # add that number and a space to the word

def word_lengths(string)
  hsh = {}
  words = string.split
  
  words.each do |word|
    hsh[word] = word.size
  end
  
  result = []
  hsh.each do |key, value|
    result << key + ' ' + value.to_s
  end 
  
  p result 
end
p word_lengths("cow sheep chicken") == ["cow 3", "sheep 5", "chicken 7"]

p word_lengths("baseball hot dogs and apple pie") ==
  ["baseball 8", "hot 3", "dogs 4", "and 3", "apple 5", "pie 3"]

p word_lengths("It ain't easy, is it?") == ["It 2", "ain't 5", "easy, 5", "is 2", "it? 3"]

p word_lengths("Supercalifragilisticexpialidocious") ==
  ["Supercalifragilisticexpialidocious 34"]

p word_lengths("") == []