def leap_year?(year)
  if year <= 1752 && year % 4 == 0
    true 
  elsif year % 400 == 0
    true
  elsif year % 100 == 0 
    false
  else 
    year % 4 == 0
  end
end

puts leap_year?(80)
puts leap_year?(2022)
