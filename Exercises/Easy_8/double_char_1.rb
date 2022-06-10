# Write a method that takes a string, and 
# returns a new string in which every character is doubled.

def repeater(string)
  result = ''
  
  string.each_char do |character|
    result << character << character
  end
  result 
end 

puts repeater('Hello') == "HHeelllloo"
puts repeater("Good job!") == "GGoooodd  jjoobb!!"
puts repeater('') == ''