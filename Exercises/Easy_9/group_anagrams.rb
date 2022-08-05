# program that print out the group of words that ar anagram
# anagrams are words that have the same letters in the but different order
# words all have 4 letters
# must return the anagram in their own arrays
# all lowercase letters

# input: array of strings
# output: arrays

#DS: hash

# algorithm: 
  # find if words have the same letters as each other
    # word sorted is not a key yet in the hash above add the sorted wordf as key and word as [value]
    # if it is , just add the word into th value array
  # if they do, add them to an array with eachother
  # add those array to an array
  # iterate through that nd print each 
  
def anagrams(words)
  result = {}
  
  words.each do |word|
    if result.has_key?(word.chars.sort.join)
      result[word.chars.sort.join] << word
    else
      result[word.chars.sort.join] = [word]
    end
  end 
  
  result.map do |key, value|
    p value
  end
  
end

words =  ['demo', 'none', 'tied', 'evil', 'dome', 'mode', 'live',
          'fowl', 'veil', 'wolf', 'diet', 'vile', 'edit', 'tide',
          'flow', 'neon']
          
anagrams(words)