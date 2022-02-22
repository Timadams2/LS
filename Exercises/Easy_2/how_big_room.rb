puts "Enter the lenth of the room in meters:"
length_meters = gets.chomp
puts "Enter the width of the room in meters:"
width_meters = gets.chomp

size_meters = (length_meters.to_f * width_meters.to_f).round(2)
size_feet = (size_meters * 10.7639).round(2)

puts "The area of the room is #{size_meters} square meters (#{size_feet} square feet)."
