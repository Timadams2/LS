# method that takes a string
# returns true if all of the alphabetic character are uppercase
# ignore any other characters
# if empty, return true

# A
  # make the string into characters
  # if the character is a capital, go to the next one
    # if the character upcased is the same as not upcased, its capital
  # if it is alphabetic and lowercaswe return false
  # true if it never find lowercase alphabetic character
  
def uppercase?(str)
  characters = str.chars
  characters.each do |char|
    return false if char.upcase != char
  end
  true
end

p uppercase?('t') == false
p uppercase?('T') == true
p uppercase?('Four Score') == false
p uppercase?('FOUR SCORE') == true
p uppercase?('4SCORE!') == true
p uppercase?('') == true