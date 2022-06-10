# Problem
# Explicit:
# Write a method that takes an Array of numbers, and returns an Array with the same number of elements, 
# and each element has the running total from the original Array.

def running_total(num_arr)
  total = 0 
  running_array = []
  
  num_arr.map do |integer|
    total += integer
    running_array << total
  end 
  running_array 
end 

puts running_total([2, 5, 13]) == [2, 7, 20]
puts running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
puts running_total([3]) == [3]
puts running_total([]) == []