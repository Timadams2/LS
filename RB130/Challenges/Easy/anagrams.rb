#problem
# write a program that takes a word and a list of possible anagrams 
# selects the correct sublist that contains the anagrams of the word
# return value is an array of tha the options that work

#examples
# case insensitive
# empty array if there is not correct answers
# if its the same word it doesnt count
# match method that is called on an Anagram object and takes an array as argument

#data structure
# input string
# output array

#algorithm
# create Anagram class

# constructor
  # takes a one word string
  # assign string to instance variable @word

# match
  # called on Anagram object
  # initialize result variable and assign to empty array
  # intialize variable sorted_word and asign @word sorted and downcased
    # must break into words
  # iterate through the argument array and determine if that word is an anagram to @word
    # call sort and downcase on each word of each iteration anc compare with the sorted_word
      # must break int character to sort and then join back together
    # if they have the same value then add them to the result array
      # unless it is the same when both of them are not sorted
  # returns new array

class Anagram
  attr_reader :word
  
  def initialize(word)
    @word = word
  end 
  
  def match(options)
    result = []
    sorted_word = word.downcase.chars.sort.join
    
    options.each do |option|
      if option.downcase.chars.sort.join == sorted_word
        result << option unless word.downcase == option.downcase
      end
    end
    result
  end
end
