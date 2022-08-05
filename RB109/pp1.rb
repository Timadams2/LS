# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

# should be same amount of elements in input and result array
# always positive ineters
# always at least 1 element return 0

# input: array
# output: array

# algorithm:
  # intilize empty result array
  # iterate through each number of the given array
    # find the count of the number in the array less than the number for the iteration
  # find how many elements are smaller than it
  # add the number to an array, and go to the next one
  
def smaller_numbers_than_current(array)
  result = []
  
  array.each do |num|
    result << array.uniq.count { |amount| amount < num}
  end
  
  p result 
end
# Examples:

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".