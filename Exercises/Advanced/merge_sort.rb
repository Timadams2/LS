# P
# Explicit:
# # sort an array of passed in values using merge sort 
# # this array will only contain on data type at a time (string or integer)
# # recursive sorthing algorith that breaks fown array elements into nested sub_arrays
# # then recombines them in sorted order
# # can use merge method created prior
# Implicit:
## can be odd or even amount of elements 
## you should continue to next arrays until there are one element arrays inside 
## can you mutate?

# E
## [9, 5, 7, 1] ->
## [[9, 5], [7, 1]] ->
## [[[9], [5]], [[7], [1]]]
### work your way back out
## [[[9], [5]], [[7], [1]]] ->
## [[5, 9], [1, 7]] ->
## [1, 5, 7, 9]merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]

## merge_sort([5, 3]) == [3, 5]
## merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
## merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
## merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]

# D
## input: array
## midput: nested arrays
## output: arra

def merge_sort(array)
  return array if array.size == 1
  
  sub_array_1 = array[0...array.size / 2]
  sub_array_2 = array[array.size / 2...array.size]
  
  sub_array_2 = merge_sort(sub_array_1)
  sub_array_2 = merge_sort(sub_array_2)
  
  merge(sub_array_1, sub_array_2)
end

def merge(arr1, arr2)
  merged_array = []
  index1 = 0
  index2 = 0
  
  if arr1.empty?
    merged_array.push(arr2)
  elsif arr2.empty?
    merged_array.push(arr1)
  else
    loop do
      if index1 == arr1.size
        merged_array.push(arr2[index2..-1][0])
        break
      elsif index2 == arr2.size
        merged_array.push(arr1[index1..-1][0])
        break
      else
        if arr1[index1] == arr2[index2]
          merged_array.push(arr1[index1], arr2[index2])
          index1 += 1
          index2 += 1
        elsif arr1[index1] >= arr2[index2]
          merged_array.push(arr2[index2])
          index2 += 1
        else
          merged_array.push(arr1[index1])
          index1 += 1
        end
      end
    end
  end
  merged_array.flatten
end

p merge_sort([9, 5, 7, 1]) == [1, 5, 7, 9]
p merge_sort([5, 3]) == [3, 5]
p merge_sort([6, 2, 7, 1, 4]) == [1, 2, 4, 6, 7]
p merge_sort(%w(Sue Pete Alice Tyler Rachel Kim Bonnie)) == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)
p merge_sort([7, 3, 9, 15, 23, 1, 6, 51, 22, 37, 54, 43, 5, 25, 35, 18, 46]) == [1, 3, 5, 6, 7, 9, 15, 18, 22, 23, 25, 35, 37, 43, 46, 51, 54]
