def oddities(arr)
  array = []
  index = 0 
  while index < arr.size
    array << arr[index]
    index += 2
  end
  array
end

print oddities([2, 3, 4, 5, 6])
print oddities([1, 2, 3, 4, 5, 6])
puts oddities(['abc', 'def'])
puts oddities([123])
puts oddities([]) 