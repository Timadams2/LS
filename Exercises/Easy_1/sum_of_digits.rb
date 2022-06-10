def sum(num)
  sum = 0
  digits = num.to_s.chars
  
  digits.each do |digit|
    sum += digit.to_i
  end 
  
  sum
end 

    
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
