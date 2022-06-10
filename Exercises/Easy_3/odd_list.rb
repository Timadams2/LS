def oddities(array)
  every_other = []
  index = 0
  
  loop do 
    every_other << array[index]
    index += 2
    break if index > array.count
  end 
  every_other
end 


    