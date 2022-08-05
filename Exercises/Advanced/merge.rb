# method that takes two sorted arrays as arguments
# return a new array that contains all elements from both arguments in sorted array
# you must build the array in the proper order and cannot sort the result
# should not mutate the original array

# input: two arrays
# output: array

# algorithm:
  # initialize result array 
    # result = []
  # until one of the arrays in empty
    # when one is empty, add all of the rest of the other
  # add the smallest number of the two arrays into it
    # if the first element of the first array is less, shift array into result
    # keep doing this until they are empty
  # the add the next, until every one is in the result array

def merge(old1, old2)
  result = []
  arr2  = old2.clone
  arr1 = old1.clone
  loop do
    if arr1.empty?
      result << arr2 
      break
    elsif arr2.empty?
      result << arr1
      break
    end
    
    if arr1.first > arr2.first 
      result << arr2.first
      arr2.delete_at(0)
    else
      result << arr1.first
      arr1.delete_at(0)
    end
  end 
  result.flatten
end

b = [1, 5, 9] 
a = [2, 6, 8]
p merge(a, b) == [1, 2, 5, 6, 8, 9]
p merge([1, 1, 3], [2, 2]) == [1, 1, 2, 2, 3]
p merge([], [1, 4, 5]) == [1, 4, 5]
p merge([1, 4, 5], []) == [1, 4, 5]