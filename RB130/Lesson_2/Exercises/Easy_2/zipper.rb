#def zip(arr1, arr2)
 # new_array = []
#  0.upto(arr1.size - 1) { |idx| new_array << [arr1[idx], arr2[idx]] }
 # new_array
#
def zip(arr1, arr2)
  arr1.map.with_index { |el, idx| [el, arr2[idx]] }
end


puts zip([1, 2, 3], [4, 5, 6]) == [[1, 4], [2, 5], [3, 6]]