# method that takes an array 
# return true or fale whether the secon argument is included in the array

def my_include?(arr, integer)
  arr.each do |num|
    return true if num == integer
  end
  return false
end

p my_include?([1,2,3,4,5], 3) == true
p my_include?([1,2,3,4,5], 6) == false
p my_include?([], 3) == false
p my_include?([nil], nil) == true
p my_include?([], nil) == false