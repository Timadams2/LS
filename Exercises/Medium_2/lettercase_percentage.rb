# method that takes a string
# return the percentage of the uppercase letters, lowercase letters, neither

# algorithm:
  # initialize the same kind of hash as belofw except have the value be value 
  # create a hash with symbols lowercase uppercase neither as keys and 0 as 
  # iterate through the character of the string
  # if the character is one of them, add 1 to the value 

def letter_percentages(string)
  hsh_values = { lowercase: 0, uppercase: 0, neither: 0 }  
  hsh_percentages = { lowercase: 0.0, uppercase: 0.0, neither: 0.0 }
  
  string.chars.each do |char|
    if ('a'..'z').include?(char)
      hsh_values[:lowercase] += 1
    elsif ('A'..'Z').include?(char)
      hsh_values[:uppercase] += 1
    else 
      hsh_values[:neither] += 1
    end
  end
    
  total = hsh_values.values.reduce(:+)
  hsh_percentages[:lowercase] = ((hsh_values[:lowercase] * 100) / total.to_f)
  hsh_percentages[:uppercase] = ((hsh_values[:uppercase] * 100) / total.to_f)
  hsh_percentages[:neither] =  ((hsh_values[:neither] * 100) / total.to_f)
  p hsh_percentages
end
  
p letter_percentages('abCdef 123') == { lowercase: 50.0, uppercase: 10.0, neither: 40.0 }
p letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25.0 }
p letter_percentages('123') == { lowercase: 0.0, uppercase: 0.0, neither: 100.0 }