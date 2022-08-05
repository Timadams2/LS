# transform transpose3x3 to take any amount of arrays with any amount of elements 

# algorithm:
  # add the amount of arrays there are to the result
    # find the amount of arrays you need 
  # then find the size of the nested arrays and have it that many times - 1
  
def transpose(arrays)
  times = arrays[0].size
  result = Array.new(times) {Array.new}
  
  0.upto(times - 1) do |num|
    arrays.each do |arr|
      result[num] << arr[num]
    end
  end
  
  p result
end

p transpose([[1, 2, 3, 4]]) == [[1], [2], [3], [4]]
p transpose([[1], [2], [3], [4]]) == [[1, 2, 3, 4]]
p transpose([[1, 2, 3, 4, 5], [4, 3, 2, 1, 0], [3, 7, 8, 6, 2]]) == [[1, 4, 3], [2, 3, 7], [3, 2, 8], [4, 1, 6], [5, 0, 2]]
p transpose([[1]]) == [[1]]