# method that takes an array of numbers
# array with the same number of element but each is the running total

# initialize a total variable
# initialize a result array and make it empty
# iterate through the numbers and n each iteration add it to the sum and and put that in the array

def running_total(array)
  total = 0
  result = []
  
  array.each do |num|
    total += num 
    result << total
  end
  result 
end 

p running_total([2, 5, 13]) == [2, 7, 20]
p running_total([14, 11, 7, 15, 20]) == [14, 25, 32, 47, 67]
p running_total([3]) == [3]
p running_total([]) == []