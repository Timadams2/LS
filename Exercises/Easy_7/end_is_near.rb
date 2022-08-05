# method that returns the next to last word in the string 
# words are any sequence of non blank characters
# the input string will always contain at least two words
# find the middle word
# it must have an odd amount of words
# it must have at least 3 words unless 1 means that the middle
# split into words the input string

def penultimate(string)
  words = string.split
  if words.size.odd?
    return words[words.size / 2]
  else
    return words[(words.size / 2) - 1].flatten
  end
end

p penultimate('last word') == 'last'
p penultimate('Launch School is great!')
p penultimate('1 2 3')