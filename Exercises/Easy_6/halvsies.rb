def halvsies(array)
  half_index = (array.count / 2.0).ceil
  first_half = array.slice(0, half_index)
  second_half = array.slice(half_index, half_index)
  [first_half, second_half]
end 


puts halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
puts halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]

puts halvsies([5]) == [[5], []]
puts halvsies([]) == [[], []]
