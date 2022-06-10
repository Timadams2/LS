def merge(arr1, arr2)
  new = []
  arr1.each do |element|
    next if arr2.include?(element)
    new << element
  end 
  
  new << arr2
  new.to_a.flatten
end 
  
puts merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
merge([1, 3, 5], [3, 6, 9])

# should have used ' Array#| '