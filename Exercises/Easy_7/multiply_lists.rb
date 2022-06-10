# Write a method that takes two Array arguments in which each Array contains a list of numbers, 
# and returns a new Array that contains the product of each pair of numbers from the arguments that have the same index. 
# You may assume that the arguments contain the same number of elements.

def multiply_lists(arr1, arr2)
  products = []
  
  arr1.each_with_index do |integer, index|
    products << integer * arr2[index]
  end 
  products
end 

puts multiply_lists([3, 5, 7], [9, 10, 11])