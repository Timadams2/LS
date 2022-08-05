# Write a method named to_weird_case that accepts a string, and
# returns the same sequence of characters with every 2nd character
# in every third word converted to uppercase. Other characters
# should remain the same.

# words a split by cases
# never an empty string, always at least 3 words
# can mutate or return new string 
# if no changes return the the input string

# input: string
# output: string

# algorithm:
  # split the string up into words and assign to new variable 
  # iterate through every 3 word
    # satring with index 2, add 3 each time until it the index is equal to or greater than the array size minus 1
  # when on the third word
    # iterate through and upcase every other letter, starting weith the second
      # starting with index 1, add 2 every time
        # upcase that letter
  # return the new string joined together
  
def to_weird_case(string)
  words = string.split
  
  word_idx = 2 
  loop do 
    break if word_idx >= words.size
    letter_idx = 1 
    loop do 
      break if letter_idx >= words[word_idx].size
      words[word_idx][letter_idx] = words[word_idx][letter_idx].upcase
      letter_idx += 2
    end
    word_idx += 3
  end
  p words.join(' ')
end

# Examples:

p to_weird_case('Lorem Ipsum is simply dummy text of the printing') == 'Lorem Ipsum iS simply dummy tExT of the pRiNtInG'
p to_weird_case('It is a long established fact that a reader will be distracted') == 'It is a long established fAcT that a rEaDeR will be dIsTrAcTeD'
p to_weird_case('aaA bB c') == 'aaA bB c'
p to_weird_case('Miss Mary Poppins word is supercalifragilisticexpialidocious') == 'Miss Mary POpPiNs word is sUpErCaLiFrAgIlIsTiCeXpIaLiDoCiOuS'

# The tests above should print "true".