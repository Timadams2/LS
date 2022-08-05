# given a string of words seperated by spaced
# returns a string in which the first and last letter of every word swapped

# split the sentence into words
# for each word switch the first and last

def swap(string)
  words = string.split
  words.map do |word|
    word[0], word[-1] = word[-1], word[0]
  end 
  p words.join(' ')
end 

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'