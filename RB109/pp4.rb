# Write a method that takes an array of integers and returns the
# two numbers that are closest together in value.

# always at least 3 integers given 
# not given in order
# always positive numbers
# integers must be returned in the order they came in
# the first two hold precendence if they are two with the same 

# input: array
# output: array 

# algorithm:
  # sort the array and reverse it 
  # intialize smallest gap variable and assign to the first element minus the second element
  # intialize empty result array to store the value with the smallest gap
  # intialize empty array to store the value with the smallest gap in the wrong order
  # compare the gap between all of the numbers 
    # 
    # subtract the first integer with the second and store that value as long as it it greater than the one in their before
    # if it smaller, also add those value to result array
  # return the two integrs with the smallest gap
    # iterate through the input array, if it is in the array above, put into result array until it has 2 elements 
    # return that

def closest_numbers(array)
  sorted = array.sort
  result = []
  closest = [sorted[0], sorted[1]]
  gap = sorted[1] - sorted[0]
  
  1.upto(array.size - 2) do |idx|
    if sorted[idx + 1] - sorted[idx] < gap
      gap = sorted[idx + 1] - sorted[idx]
      closest = [sorted[idx], sorted[idx + 1]]
    end
  end
  array.each do |num|
    if closest.include?(num)
      result << num
    end
  end
  p result
end
# Examples:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

# The tests above should print "true".