def ascii_value(string)
  num_string = string.chars
  sum = 0
  num_string.each { |dig| sum += dig.ord }
  sum
end 
    
puts ascii_value('Four score') == 984
puts ascii_value('Launch School') == 1251
puts ascii_value('a') == 97
puts ascii_value('') == 0