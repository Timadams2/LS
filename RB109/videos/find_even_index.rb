# given an array of integers
# find where the array splits so that all of the integers on the left are equal to the second half
# return -1 if there is not possible solution
# the index will not count in the sums
# positive and negative integers
# input: array
# output: integer

# algorithm: 
  # iterate throguh each index and find if the left is equal to the right
    # if e verything after the first index == 0
      # return 0
    # if everything but the last integer == 0
      # return the integer of that last index
    # then iterate through integer 1 to the size of the integer - 2
      # compare the 0 up to the number and the number to the end 
      # if equal return that
  # if they do, return that index
  
def find_even_index(array)
  if array[1..-1].reduce(:+) == 0
    return 0
  elsif array[0..-2].reduce(:+) == 0
    return (array.size - 1)
  end
  
  1.upto(array.size - 2) do |num|
    if array[0...num].reduce(:+) == array[(num + 1)..-1].reduce(:+)
      return num
    end
  end
  return -1
end

p find_even_index([1, 2, 3, 4, 3, 2, 1])
p find_even_index([1, 100, 50, -51, 1, 1])
p find_even_index([10, -80, 10, 10, 15, 35, 20])