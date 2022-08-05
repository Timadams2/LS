# method that takes a non empty string as an argument 
# return the middle character or character
# if it has even amount of chars its 2, odd 1
# if one character, return that

# algorithm: 
  # find if the string has odd or even amount of character
  # if even, find the middle two
    # find how many character in the string and divide by 2
    # 6 / 2 = 3, want index 2 and 3 to be returned 
    # the number index  - 1 and that number index combined returned
  # if odd, find the middle
    # 5/ 2 = 2, want that index returned 
  # return that
  
def center_of(string)
  if string.length.odd?
    string[string.length / 2]
  else
    string[(string.length / 2) - 1, 2]
  end
end

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'