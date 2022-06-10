# Write a method that takes a string, and then returns a hash that contains 3 entries: 
# one represents the number of characters in the string that are lowercase letters, 
# one the number of characters that are uppercase letters, 
# and one the number of characters that are neither
CAPITALS = ("A".."Z").to_a
NOT_CAPITAL = ("a".."z").to_a

def letter_case_count(string)
  character_count = { lowercase: 0, uppercase: 0, neither: 0 }
  
  string.chars.map do |character|
    if CAPITALS.include?(character)
      character_count[:uppercase] += 1
    elsif NOT_CAPITAL.include?(character)
      character_count[:lowercase] += 1 
    else 
      character_count[:neither] += 1
    end
  end 
  character_count
end 

puts letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
puts letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
puts letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
puts letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }