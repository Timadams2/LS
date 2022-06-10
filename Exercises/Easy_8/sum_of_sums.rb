# Write a method that takes an Array of numbers and 
# then returns the sum of the sums of each leading subsequence for that Array. 
# You may assume that the Array always contains at least one number.

## add index 0 with index 0 + 1 and then 0 + 1 + 2 etc
## add to seperate array 
## return seperate array 

def sum_of_sums(numbers)
  total = 0
  sum = 0
  
  numbers.each do |number|
    sum += number 
    total += sum
  end 
  
  total
end 

puts sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
puts sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
puts sum_of_sums([4]) == 4
puts sum_of_sums([1, 2, 3, 4, 5]) == 35