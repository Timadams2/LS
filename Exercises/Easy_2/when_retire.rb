puts "=> What is your age?"
current_age = gets.chomp.to_i

puts "=> What age do you plan to retire?"
retirement_age = gets.chomp.to_i

years_to_retirement = retirement_age - current_age 
retirement_year = 2022 + years_to_retirement

puts "Its 2022. You will retire in #{retirement_year}."
puts "You only have #{years_to_retirement} years until retirement."

