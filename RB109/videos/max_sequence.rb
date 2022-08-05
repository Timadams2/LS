# find the largest sum of 5 consectuive integers in an array
# if there is no integers, return 0
# if there is less than 5 integers return the sum of those 
# if the largest sum  is a negative then return 0
# positive and negative numbers

# input: input
# ouput: integer

# algorithm: 
  # find if there is more than 5 integers
  # initialize an array to add all of the possible sums
  # if there is more than iterate through the elements starting with the first one
    # then go to the array size - 6
  # find the largest
  # return it unless is it less than 0, return 0
  
def max_sequence(array)
  result = []
  
  if array.size < 6
    result << array.reduce(:+)
  else
    0.upto(array.size - 5) do |idx|
      result << array[idx, 5].reduce(:+)
    end
  end
  return result.max unless result.max < 0 
  return 0
end 

p max_sequence([1, 3, 5, 5, 3, 5, 7])
p max_sequence([8])
p max_sequence([-9])