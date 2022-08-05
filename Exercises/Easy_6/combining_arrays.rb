# method that takes two array as arguments 
# returns an array that can contain all of the values without duplicates

def merge(arr1, arr2)
  arr1.concat(arr2).uniq
end

p merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]