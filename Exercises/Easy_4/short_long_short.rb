def short_long_short(string1, string2)
  if string1.length > string2.length
    string2 + string1 + string2
  elsif 
    string1 + string2 + string1
  end
end

# determine which string is longer
# return concate shorter longer shorter

puts short_long_short('abc', 'defgh')
puts short_long_short('abcde', 'fgh') 
puts short_long_short('', 'xyz') 