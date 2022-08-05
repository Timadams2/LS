# method that takes an array 
# return two arrays 
  # first half and second halk

# initialize  and array with two arrays inside 
# ad the first digits to an array
# add the second half in another
# if there is odd amount, more go into the first 
# if odd, thenput num / 2 + 1 amount in first
  # then put the rest meaning num / 2 times -1
# if even then put 
  # num / 2 - 1 in the first 
  # put num/ 2 times * -1
# return the result 

def halvsies(array)
  result = [[], []]
  if array.empty?
    return result
  elsif array.size == 1
    result[0] = array[0]
  end
  
  if array.size == 1
    result[0]
  elsiif array.size.odd?
    result[0] = array[0..(array.size / 2)]
    result[1] = array[((array.size / 2) * -1)..-1]
  elsif 
    result[0] = array[0..(array.size / 2) - 1]
    result[1] = array[((array.size / 2) * -1)..-1]
  end
  p result
end 
p halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
p halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
p halvsies([5]) == [[5], []]
p halvsies([]) == [[], []]