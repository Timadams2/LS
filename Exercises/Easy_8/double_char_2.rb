# same as last time expect only double the consonants

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ' '
  
  string.each_char do |character|
    result << character 
    result << character if CONSONANTS.include?(character.downcase)
  end 
end 

puts double_consonants('String') == "SSttrrinngg"
puts double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
puts double_consonants("July 4th") == "JJullyy 4tthh"
puts ('') == ""
