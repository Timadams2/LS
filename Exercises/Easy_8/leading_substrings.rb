# Write a method that returns a list of all substrings of a string that start at the beginning of the original string. 
# The return value should be arranged in order from shortest to longest substring.
# add first char then the first and second, then first second and thirs, etc

def leading_substrings(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end

puts leading_substrings('abc') == ['a', 'ab', 'abc']
puts leading_substrings('a') == ['a']
puts leading_substrings('xyzzy')