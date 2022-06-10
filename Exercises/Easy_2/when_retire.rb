print "What is your age?"
age = gets.chomp.to_i
print "At what age would you like to retire?"
retire_age = gets.chomp.to_i

retirement_year = (Time.now.year) + (retire_age - age)
puts "It is 2022. You will retire in #{retirement_year}"
puts "You only have #{retire_age - age} years of work to go"
