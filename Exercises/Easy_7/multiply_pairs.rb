# method that takes two array as arguments
# returns a new arrray that contains the products of every pair of the numbers that can be formed 
# the result array should be organized by ascending value
# non empty arrays

# initialize a new array to put the combinations
# iterate through the second array and mutiply it to the first of the first array
# then iterate through the second array but add one to the index of the first
# add each of those to the result array
# once done, sort that array and return it

def multiply_all_pairs(arr1, arr2)
  result = []
  
  arr1.each do |integer1|
    arr2.each do |integer2|
      result << integer1 * integer2
    end
  end
  result.sort
end 

p multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
