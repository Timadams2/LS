# Write a method that takes a single String argument and 
# returns a new string that contains the original value of the argument with 
# the first character of every word capitalized and all other letters lowercase.
# You may assume that words are any sequence of non-blank characters.
# you cannot use capatilize

# split the sentence up into words
# create a new array for all new words

# iterate through the words
# for each word
  # upcase first index
  # if it not a letter, dont upcase
  # if it is upcase
  # the downcase all of the rest
  # then put the word into new array of word
# join that array

def word_cap(string)
  words = string.split
  characters = words.map do |word|
    word.chars
  end
  
  characters.map do |char_word|
    char_word.map do |char|
      char.downcase!
    end
  end 
  
  characters.map do |word|
    if ('a'..'z').include?(word[0])
      word[0].upcase!
    end
  end
  
  new_words = characters.map do |word|
    word.join
  end 
  new_words.join(' ')
end

puts word_cap('four score and seven') == 'Four Score And Seven'
puts word_cap('the javaScript language') == 'The Javascript Language'
puts word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'