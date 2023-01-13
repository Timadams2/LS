def missing(array)
  result = []
  
  array.first.upto(array.last) do |num|
    result << num unless array.include?(num)
  end
  result
end

puts missing([-3, -2, 1, 5]) == [-1, 0, 2, 3, 4]
puts missing([1, 2, 3, 4]) == []
puts missing([1, 5]) == [2, 3, 4]
puts missing([6]) == []