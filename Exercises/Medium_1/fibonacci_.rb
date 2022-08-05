# method that takes an integer as an argument 
# return the nth fiboncacci number

# algorithm:
  # initialize result array with 1 and 1 as its first two elements
  # add the last integer with the second last integer onto the end of the array
  # do that n times minus 2
  # return the last element in the array
  
def fibonacci_last(num)
  
  result = [1, 1]
  
  (num - 2).times do
    result << result[-2] + result[-1]
  end
  
  answer = result.last
  answer.to_s[-1].to_i
end

p fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) # -> 4

# method that take an integer as its argument 
# return the last digit of the nth fibonacci number