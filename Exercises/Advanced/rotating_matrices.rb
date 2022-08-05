# method that takes an arbitrary matrix 
# rotates its 90 degrees clockwise
# it can take any amount of arrays with any amount of elements 
# always at least 1 element and at least one array 

# algorithm:
# initilize result array and make it have the number of elements in the array
  # if there is 2 arrays, there is 2 element per array
    # find the amount of arrays and initialize a variable number_of_arrays
    # if there is 4 elements in each array, you will creat an array of 2, 4 times
      # for the 4 times, you will take an element from each, starting with 0 from each
      # take from the last array first
      # reverse the array before iterating through 
      

def rotate90(arrs)
  number_of_elements = arrs[0].size
  result = Array.new(number_of_elements) {Array.new}
  
  (number_of_elements - 1).downto(0) do |idx|
    arrs.reverse.map do |arr|
      result[idx] << arr[idx]
    end
  end
  result
end

matrix1 = [
  [1, 5, 8],
  [4, 7, 2],
  [3, 9, 6]
]

matrix2 = [
  [3, 7, 4, 2],
  [5, 1, 0, 8]
]

new_matrix1 = rotate90(matrix1)
new_matrix2 = rotate90(matrix2)
new_matrix3 = rotate90(rotate90(rotate90(rotate90(matrix2))))

p new_matrix1 == [[3, 4, 1], [9, 7, 5], [6, 2, 8]]
p new_matrix2 == [[5, 3], [1, 7], [0, 4], [8, 2]]
p new_matrix3 == matrix2