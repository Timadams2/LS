def my_reverse(array)
  array_copy = []
  puts "Beginning object id #{array.object_id}"
  
  loop do
    array_copy << array.pop
    break if array.empty?
  end 
  
  puts "End object id #{array_copy.object_id}"
  puts array_copy = [5, 4, 3, 2, 1]
  array_copy
end 

puts my_reverse([1, 2, 3, 4, 5])