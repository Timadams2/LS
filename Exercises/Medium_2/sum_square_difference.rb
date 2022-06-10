# method that computes difference between the 
## the square of the sum
## the sum of the squares
# of the first n positive integers

def sum_square_difference(first_n)
  sum_squares = 0
  sum = 0
  
  1.upto(first_n) do |digit|
    sum_squares += digit**2
    sum += digit
  end 
  
  (sum**2) - sum_squares
end

puts sum_square_difference(3) == 22
   # -> (1 + 2 + 3)**2 - (1**2 + 2**2 + 3**2)
puts sum_square_difference(10) == 2640
puts sum_square_difference(1) == 0
puts sum_square_difference(100) == 25164150
    