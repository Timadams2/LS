# method has a number of digits as its argument
# returns the index of the first fibonacci number of the digits specified

def find_fibonacci_index_by_length(digits)
  first = 1
  second = 1
  index = 2
  
  loop do 
    index += 1
    fibonacci = first + second
    break if fibonacci.to_s.size >= digits
    
    first = second
    second = fibonacci
  end 
  
  index
end

puts find_fibonacci_index_by_length(2)       # 1 1 2 3 5 8 13
puts find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
puts find_fibonacci_index_by_length(10) == 45
puts find_fibonacci_index_by_length(100) == 476
puts find_fibonacci_index_by_length(1000) == 4782
puts find_fibonacci_index_by_length(10000) == 47847