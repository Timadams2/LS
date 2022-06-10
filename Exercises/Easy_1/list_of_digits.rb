def digit_list(integer)
  digits = []
  loop do 
    integer, remainder = integer.divmod(10)
    digits.unshift(remainder)
    break if integer == 0
  end 
  digits 
end 
    
    

puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
puts digit_list(7) == [7]                     # => true
puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
puts digit_list(444) == [4, 4, 4]             # => t