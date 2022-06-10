# method that taskes a string as an arg
# returns a new string with every case switched to the opposite
# iterate thought each char, dtermine if its lower or upper or neither 
# switch it based on the answer
# go from string to array to string 
# creat constants for upper and lowercase letter so that you can compare to those to find its case
# cannot use swap case

CAPITALS = ('A'..'Z')
NOT_CAPITALS = ('a'..'z')

def swapcase(string)
  new_str = []
  
  string.chars.map do |character|
    if CAPITALS.include?(character)
      new_str << character.downcase
    elsif NOT_CAPITALS.include?(character)
      new_str << character.upcase
    else
      new_str << character
    end
  end 
  new_str.join
end 

puts swapcase('CamelCase') == 'cAMELcASE'
puts swapcase('Tonight on XYZ-TV')

# could have used ' if character =~ /[a-z]/ '