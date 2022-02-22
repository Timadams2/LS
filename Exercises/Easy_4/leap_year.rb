def leap_year?(year)
  if year % 400 == 0
    true 
  elsif year % 100 == 0
    false 
  else
    year % 4 == 0
  end
end

puts leap_year?(2016)
puts leap_year?(2022)
    
# if divisbiles by 4 
## unless divisilbe by 100 
### unless those are divisible by 400
# rules for all except 0