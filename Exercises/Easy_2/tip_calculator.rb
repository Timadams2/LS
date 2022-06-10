print "What is the bill?"
bill = gets.to_i
print "What is the tip percentage?"
tip_percentage = gets.to_i

tip = (bill * (tip_percentage * 0.01)).round(2)
final_bill = (bill + tip).round(2)

puts "The tip is $#{tip}"
puts "The total is $#{final_bill}"
