# given a string 
# return a hash  that contains the lowercase, uppercase and neither as keys
# the amount of characters in the string for each key is the value 
# spaces are included as a neither
# integers are neither
# rest are letters

# creat a hash with the given keys 
# iterate through each index
# if it is a lowercase letter add it to lowercase in hash 
  # if it a..z 
  # add 1 to the value of lowercase
# if is an uppercase letter add it to the uppercase in hash 
  # if it is A..Z 
  # add one to the value of uppercase
# if it is neither ad 1 to the value of the the neither key in the hash
  # else add one to neither

def letter_case_count(string)
  hash = {lowercase: 0, uppercase: 0, neither: 0}
  
  string.size.times do |idx|
    if ('a'..'z').include?(string[idx])
      hash[:lowercase] += 1
    elsif ('A'..'Z').include?(string[idx])
      hash[:uppercase] += 1
    else 
      hash[:neither] += 1
    end
  end
  hash
end 

p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
