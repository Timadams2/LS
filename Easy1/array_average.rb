def average(array)
    sum = array.inject(:+)
    sum / array.count
end 

    
puts average([1, 6])
puts average([1, 5, 87, 45, 8, 8])
puts average([9, 47, 23, 94, 16, 52])
