value = (1...99).select do |number| 
  if number.odd? 
    puts number
  end 
end 

puts value
