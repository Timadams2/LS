# Write a method that takes one argument: an array of integers.
# The method should return the minimum sum of 5 consecutive
# numbers in the array. If the array contains fewer than 5
# elements, the method should return nil.

# can be psisitve or negative integers
# if less than 5 elements, return nil
# otherwise wlaways an integer return valuue
# sum of 5 integers, mus be in order


# algorithm:
  # if there is less than 5 elements return nil\
  # initliaze empty array to varibale sum
  
  # find if there is all possible combinations 
    # iterate through all possible consectuive 5 integers
    # iterate from 0 to the size of the array - 5
    # on each iteration, find the sum of those and add to sum array
      # use reduce
  # find the smallest of those
    # call min on array
  # return it
  
def minimum_sum(array)
  return nil if array.size < 5
  sums = []
  
  0.upto(array.size - 5) do |idx|
    sums << array[idx, 5].reduce(:+)
  end
  sums.min
end

# Examples:

p minimum_sum([1, 2, 3, 4]) == nil
p minimum_sum([1, 2, 3, 4, 5, 6]) == 15
p minimum_sum([55, 2, 6, 5, 1, 2, 9, 3, 5, 100]) == 16
p minimum_sum([-1, -5, -3, 0, -1, 2, -4]) == -10

# The tests above should print "true".