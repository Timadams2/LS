# method that reverses an array
# return the original array 

# take the original array 
# make it so the first element is the last, and the last the first
  # switch them with reassignment  
# then add on to each index and make second is second to last
  # intitialize variable index and backwards index and assign them 0 and -1 
  # after switching them, add 1 to index and subract 1 from the backwards
# stop when it gets half way through 
  # if the backwards index is equivalent to the num / 2 times -1
  # if it is an odd number, if it is num / 2 + 1 times - 1

def my_reverse!(array)
  index = 0
  backwards = -1 
  
  loop do
    array[index], array[backwards] = array[backwards], array[index]
    if array.size.odd?
      break if backwards == ((array.size / 2) + 1) * -1
    else
      break if backwards == (array.size / 2) * -1
    end
    index += 1
    backwards -= 1
  end
  array
end 

arr = [1, 2, 3, 4]
p my_reverse!(arr)
p arr