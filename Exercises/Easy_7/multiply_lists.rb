# method that two arrays as arguments 
# each array contains the same amount of integers
# returns a new array that contains the product of each pair of numbers
# pair means at the same index

def multiply_list(arr1, arr2)
  result = []
  0.upto(arr1.size - 1) do |num|
    result << arr1[num] * arr2[num]
  end
  result
end

p multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]