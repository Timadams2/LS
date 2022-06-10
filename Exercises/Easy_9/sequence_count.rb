# method takes two integers as arguments
# first being the count second beig the start
# return the count starting at number given

def sequence(count, start_number)
  multiples = []
  number = start_number
  
  count.times do
    multiples << number
    number += start_number
  end
  
  multiples 
end 

puts sequence(5, 1) == [1, 2, 3, 4, 5]
puts sequence(4, -7) == [-7, -14, -21, -28]
puts sequence(3, 0) == [0, 0, 0]
puts sequence(0, 1000000) == []