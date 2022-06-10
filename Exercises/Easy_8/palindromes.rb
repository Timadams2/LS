# write a method that takes a string as an arg
# returns all the palindrome substrings inside the string
# use previous two substring methods 
# should be returned in the oder that the show up in the string 
# case matters 
# create a method that checks if something is a palindrome
## if it is the same reverse, its a palindrome
# get all the substrings with the methods already made 
# check all those if they are a paindrome, if they are , place them in a new array
## return that array

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

def substrings(string)
  results = []
  
  (0...string.size).each do |start_index|
    this_substring = string[start_index..-1]
    results.concat(leading_substrings(this_substring))
  end
  results
end

def palindrome?(substring)
  substring == substring.reverse && substring.size > 1
end 

def palindromes(string)
  all_substrings = substrings(string)
  palindrome_strings = []
  
  all_substrings.each do |substring|
    if palindrome?(substring)
      palindrome_strings << substring
    end
  end
  palindrome_strings
end

puts palindromes('abcd') == []
puts palindromes('madam') == ['madam', 'ada']
puts palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
puts palindromes('knitting cassettes')