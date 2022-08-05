# sort array with out using sort
# recursive algorithm 
# breaks down the array into nested arrays 
# then merges them together and sort them as that happens
   # use the perge method previousl created
# can take strings as well 
# can take any amount of elemenets 
# always at least 2

# input: array
# output: array

# algorithm:
  # split the array into two array
    # call split on half the size
    # then iterate through those array and if they have more than one element, split it 
      # split  it, then you have 2
      # iterae throug, if it is more than two, split it again
      # if split was called again, iterate through those,
        # if not, then work with that array for next step
    # split those int array if possible 
    
  # then call merge on each array
    # iterate through the first index to the last
    # call merge on the index plus the next index as the arguments
    # keep doing that each time until it one array
    
  # return that

def merge_sort(arr)
  nested_array = split_half(arr)
  fully_nested = nested_array.map do |array|
    if array.size > 1
      split_half(array)
    end
  end
  p fully_nested
end
 
def split_half(array)
  half = array.size / 2
  first = array[0...half]
  second = array[half..-1]
  if first.size == 1 && second.size == 1
    return [first, second]
  else 
    split_half(first)
    split_half(second)
  end
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
# p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 