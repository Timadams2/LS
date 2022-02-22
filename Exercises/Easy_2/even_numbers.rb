value = (1...99).select do |number| 
  if number.even? 
    puts number
  end 
end 

puts value