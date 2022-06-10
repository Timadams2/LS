# method with empty string as arg
# returns the middle character or characters

def center_of(string)
  half_size = (string.size) / 2
  if string.size.even?
    string[half_size-1, 2]
  else 
    string[half_size]
  end 
end 

puts center_of('I love ruby') == 'e'
puts  center_of('Launch School') == ' '
puts center_of('Launch') == 'un'
puts center_of('Launchschool') == 'hs'
puts center_of('x') == 'x'
    
    
    