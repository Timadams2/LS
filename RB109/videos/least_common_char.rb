# Write a method that takes a string as an argument and returns
# the character that occurs least often in the given string.
# If there are multiple characters with the equal lowest number
# of occurrences, then return the one that appears first in the
# string. When counting characters, consider the uppercase and
# lowercase version to be the same.
# case doesnt matter
# if there are multiples return that one that came ifrst
# awlays atleast 1 character
# spaces are included

# input: string
# output: one character string

# algorithm: 
  # add each char to an empty hash 
  # if the letter was already used as a key add 1 to its value
  # otherwise add it as a key with it valiue 1
  # find what the highest value is
  # return the first key with that value
  
def least_common_char(string)
  hsh = {}
  biggest_value = 0
  string.chars.each do |char|
    if hsh.has_key?(char.downcase)
      hsh[char.downcase] += 1
    else
      hsh[char.downcase] = 1
    end
  end
  biggest_value += hsh.values.min
  hsh.each do |key, value|
    if value == biggest_value
      return key
    end
  end
end
# Examples:

p least_common_char("Hello World") #== "h"
p least_common_char("Peter Piper picked a peck of pickled peppers") #== "t"
p least_common_char("Mississippi") #== "m"
p least_common_char("Happy birthday!") #== ' '
p least_common_char("aaaaaAAAA") #== 'a'

# The tests above should print "true".