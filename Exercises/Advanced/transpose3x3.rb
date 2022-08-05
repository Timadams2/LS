# method thattakes a nested array
# three arrays in the array
# three elements in each array
# rotate it around 
 # first array has the ifrst element of each array 
 # second array has all of the second element in the arrays ...
 # same for third

# input: nested array
# output: nested array

# algorithm:
  # initialize a nested array with 3 array
  # iterate throguh the nested arrays 3 times
    # 0 up to 2
  # 1 time put the 0 index in each in 0 index of result array
    # on the number of the iteration
    # put the 0 index in 0 index of result using shovel
  # same with the 1 and 2 indexes

def transpose(arrays)
  result = [[], [], []]
  
  0.upto(2) do |num|
    arrays.each do |arr|
      result[num] << arr[num]
    end
  end
  result
end 

matrix = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

new_matrix = transpose(matrix)

p new_matrix == [[1, 4, 3], [5, 7, 9], [8, 2, 6]]
p matrix == [[1, 5, 8], [4, 7, 2], [3, 9, 6]]