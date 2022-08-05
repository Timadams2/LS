# method that takes a sentence string as input
# return the same string with any sequenve of the words 
# if the word for a number appears, switch it in the string
# string stays the same otherwise 

# algorithm:
  # initialize array with each word at its corresponding index
  # split the sentence into words
  # iterate through numbered words array
  # if one of the words is a number, sub it out with the digit
    # gsub the word with its number  
  # then join the words back together
  
def word_to_digit(string)
  numbered_words = %w(zero one two three four five six seven eight nine)
  numbered_words.each do |word|
    if string.include?(word)
      string.gsub!(word, numbered_words.index(word).to_s)
    end
  end
  p string
end

p word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
