# take the elements from one array, put them in another array and then reverse that array and then put them bak in the original array


def my_reverse(array)
  array_copy = []
  puts "Beginning object id #{array.object_id}"
  
  loop do
    array_copy << array.pop
    break if array.empty?
  end 
  
  array << array_copy
  
  puts "End object id #{array.object_id}"
  array
end 

puts my_reverse([1, 2, 3, 4, 5])