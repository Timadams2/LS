# method that takes two string as arguments
# determines the longest of the two string
# returns the result of concatenating the shorter to the longer and then the shorter

# find which is smaller
  # use size to compare
# output smaller larger smaller
  # concatenate using +
  
def short_long_short(str1, str2)
  if str1.size > str2.size
    str2 + str1 + str2
  else
    str1 + str2 + str1
  end
end

p short_long_short('abc', 'defgh') == "abcdefghabc"
p short_long_short('abcde', 'fgh') == "fghabcdefgh"
p short_long_short('', 'xyz') == "xyz"