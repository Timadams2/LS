# write a method that is include? without using the actualy include method

def include?(array, value)
  array.each { |element| return true if value == element }
  false 
end 

puts include?([1,2,3,4,5], 3) == true
puts include?([1,2,3,4,5], 6) == false
puts include?([], 3) == false
puts include?([nil], nil) == true
puts include?([], nil) == false